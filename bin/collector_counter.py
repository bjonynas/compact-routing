import networkx as nx
import time
import sys
from _pybgpstream import BGPStream, BGPRecord, BGPElem

start = time.time()

stream = BGPStream()
rec = BGPRecord()
graph = nx.DiGraph()

time1 = 1546300800
time2 = 1546344000
num_collectors = int(sys.argv[1])
collector_list = open('collector_list', 'r')

stream.add_filter('record-type', 'ribs')
stream.add_interval_filter(time1,time2)

for c in range(num_collectors):
    stream.add_filter('collector', collector_list.readline())

collector_list.close()
stream.start()

while(stream.get_next_record(rec)):
    if rec.status != "valid":
        print (rec.project, rec.collector, rec.type, rec.time, rec.status)
    else:
        elem = rec.get_next_elem()
        while(elem):
            
            path = elem.fields.get('as-path')
            
            path = path.replace('{', ' ')
            path = path.replace('}', ' ')
            path = path.replace(',', ' ')
            path = path.split()

            for n in range (len(path)-1):
                graph.add_edge(path[n], path[n+1])

            elem = rec.get_next_elem()
end = time.time()
output = sys.argv[1] + ' ' + str(graph.number_of_nodes()) + ' ' + str(graph.number_of_edges()) + ' ' + str(int(end-start))

f = open('col_count-' + num_collectors + '.dat', 'w')
f.write(output)
f.close()