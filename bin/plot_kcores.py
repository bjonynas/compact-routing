import matplotlib.pyplot as plot
from matplotlib.ticker import MaxNLocator
from matplotlib.pyplot import figure
import os
import math

shells = {}

for year in range(1, 20):
    if year <10:
        #read in the sizes of each k-core
        dataFile = open('results/stage2/kcore-all-200' + str(year) +'.dat', 'r')
        line = dataFile.readline()
        line = line.replace('[', '')
        line = line.replace(']', '')
        line = line.replace(',', '')
        line = line.split()

        for x in range(2,len(line)):
            if x-2 not in shells.keys():
                shells[x-2] = [int(line[x])]
            else:
                shells[x-2].append(int(line[x]))
        dataFile.close()

        #read in the number of nodes in the whole graph
        dataFile = open('results/stage1/data-all-200' + str(year) +'.dat', 'r')
        line = dataFile.readline()
        line = line.split()[3]
        if 'total' not in shells.keys():
            shells['total'] = [int(line)]
        else:
            shells['total'].append(int(line))

    else:
        # read in the sizes of each k-core
        dataFile = open('results/stage2/kcore-all-20' + str(year) + '.dat', 'r')
        line = dataFile.readline()
        line = line.replace('[', '')
        line = line.replace(']', '')
        line = line.replace(',', '')
        line = line.split()

        for x in range(2, len(line)):
            if x-2 not in shells.keys():
                shells[x-2] = [int(line[x])]
            else:
                shells[x-2].append(int(line[x]))
        dataFile.close()

        # read in the number of nodes in the whole graph
        dataFile = open('results/stage1/data-all-20' + str(year) + '.dat', 'r')
        line = dataFile.readline()
        line = line.split()[3]
        if 'total' not in shells.keys():
            shells['total'] = [int(line)]
        else:
            shells['total'].append(int(line))

shells['limit'] = []
for total in shells['total']:
    n = int(total)
    shells['limit'].append(int(math.sqrt(n * math.log(n))))

years = [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]
graph = figure().gca()

plot.plot(years, shells[0], label = 'k-max')
plot.plot(years, shells[1], label = 'k-1')
plot.plot(years, shells['total'], label = 'total')
plot.plot(years, shells['limit'], label = 's')

plot.xlim(2000, 2020)
graph.xaxis.set_major_locator(MaxNLocator(integer=True))
plot.legend()
if not os.path.exists('./dissertation/images'):
    os.makedirs('./dissertation/images')

plot.show()