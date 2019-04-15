import datetime
from _pybgpstream import BGPStream, BGPRecord
import sys
import time

start = time.time()

stream = BGPStream()
rec = BGPRecord()

epoch = datetime.datetime(1970,1,1)
year = sys.argv[1]
#time1 is the midnight of January 1st of the year specified in command line
time1 = datetime.datetime(int(year), 1, 1, 0, 0)
time1 = int((time1 - epoch).total_seconds())
#time2 is 1am of January 1st of the year specified in command line
time2 = datetime.datetime(int(year), 1, 1, 8, 0)
time2 = int((time2 - epoch).total_seconds())

stream.add_filter('record-type', 'ribs')
stream.add_filter('project', 'ris')
stream.add_filter('project', 'routeviews')

stream.add_interval_filter(time1,time2)
stream.start()

ribCounts = {}
while (stream.get_next_record(rec)):
    if rec.status != "valid":
        print rec.project, rec.collector, rec.type, rec.time, rec.status
    else:
        elem = rec.get_next_elem()
        while(elem):
            if rec.collector not in ribCounts.keys():
                ribCounts[rec.collector] = 0
            ribCounts[rec.collector] = ribCounts[rec.collector] + 1
            elem = rec.get_next_elem()

for key in ribCounts.keys():
    print 'rib: ' + str(key) + ', entries: ' + str(ribCounts[key])