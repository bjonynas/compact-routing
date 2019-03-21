import networkx as nx
import sys
import time
import datetime
from _pybgpstream import BGPStream, BGPRecord, BGPElem

start = time.time()

stream = BGPStream()
rec = BGPRecord()
graph = nx.DiGraph()

#TODO get the year from command line and transform it into an epoch time
epoch = datetime.datetime(1970,1,1)
year = sys.argv[1]
#time1 is the midnight of January 1st of the year specified in command line
time1 = datetime.datetime(int(year), 1, 1, 0, 0)
time1 = int((time1 - epoch).total_seconds())
#time2 is 1am of January 1st of the year specified in command line
time2 = datetime.datetime(int(year), 1, 1, 1, 0)
time2 = int((time2 - epoch).total_seconds())

print time1
print time2

quit()

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

#TODO fix savefile name
saveFile = open(re)
for e in graph.edges:
    saveFile.write(str(e) + '\n')

end = time.time()
