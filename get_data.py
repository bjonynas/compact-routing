import networkx as nx
import sys
import time
from _pybgpstream import BGPStream, BGPRecord, BGPElem

start = time.time()

stream = BGPStream()
rec = BGPRecord()
graph = nx.DiGraph()

time1 = sys.argv[1]
time2 = sys.argv[2]

stream.add_filter('record-type', 'ribs')
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

graph.remove_edges_from(nx.selfoop_edges(graph))

saveFile = open('stage1/' + str(time1) + '-' + str(time2) + '.txt', 'w')
for e in graph.edges:
    saveFile.write(str(e) + '\n')

end = time.time()
