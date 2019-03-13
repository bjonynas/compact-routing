import networkx as nx
import time
import sys
from _pybgpstream import BGPStream, BGPRecord, BGPElem

start = time.time()

stream = BGPStream()
rec = BGPRecord()
graph = nx.DiGraph()

time1 = int(sys.argv[1])
time2 = int(sys.argv[2])

stream.add_filter('record-type', 'ribs')
#stream.add_filter('collector', 'rrc11')
stream.add_filter('project', 'ris')
stream.add_filter('project', 'routeviews')

stream.add_interval_filter(time1,time2)
stream.start()

while(stream.get_next_record(rec)):
    if rec.status != "valid":
        print rec.project, rec.collector, rec.type, rec.time, rec.status
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
output = str(int(time2) - int(time1)) + ' ' + str(graph.number_of_nodes()) + ' ' + str(graph.number_of_edges()) + str(end-start)

f = open('stage1/time_counter_output.txt', 'a+')
f.append(output)
f.close
