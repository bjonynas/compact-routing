import os
import matplotlib.pyplot as plot
from matplotlib.ticker import MaxNLocator
from matplotlib.pyplot import figure

landmark_size = []
for year in range(1, 20):
    if year < 10:
        dataFile = open('results/stage2/kshells-all-200' + str(year) + '.dat', 'r')
    else:
        dataFile = open('results/stage2/kshells-all-20' + str(year) + '.dat', 'r')
    line = dataFile.readline()
    line = dataFile.readline()
    line = line.replace("'", '')
    line = line.replace(',', '')
    line = line.replace('[', '')
    line = line.replace(']', '')
    line = line.split()
    landmark_size.append(len(line))
    dataFile.close()
years = [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]
graph = figure().gca()
plot.plot(years, landmark_size, label='Size of landmark set')

plot.xlim(2000, 2020)
graph.xaxis.set_major_locator(MaxNLocator(integer=True))

plot.title('Size of landmark set compared to total size of snapshots')

if not os.path.exists('./dissertation/images'):
    os.makedirs('./dissertation/images')

plot.savefig('dissertation/images/landmark-size.pdf')
