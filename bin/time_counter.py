import networkx as nx
import time
import sys
import datetime
from _pybgpstream import BGPStream, BGPRecord, BGPElem

start = time.time()

stream = BGPStream()
rec = BGPRecord()
graph = nx.DiGraph()

epoch = datetime.datetime(1970,1,1)
year = int(sys.argv[1])

time1 = datetime.datetime(year, 1, 1, 0, 0)
time1 = int((time1 - epoch).total_seconds())
if int(sys.argv[2]) == 24:
    time2 = datetime.datetime(year, 1, 2, 0, 0)
else:
    time2 = datetime.datetime(year, 1, 1, int(sys.argv[2]), 0)
time2 = int((time2 - epoch).total_seconds())

stream.add_filter('record-type', 'ribs')
stream.add_filter('collector', 'rrc11')
#stream.add_filter('project', 'ris')
#stream.add_filter('project', 'routeviews')

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
output = 'duration: ' + str(int(time2) - int(time1)) + '\nnumber of nodes: ' + str(graph.number_of_nodes()) + '\nnumber of edges: ' + str(graph.number_of_edges()) +'\nruntime: ' + str(end-start)

f = open('time_count-' + str(sys.argv[1]) + '.dat', 'w')
f.write(output)
f.close()
