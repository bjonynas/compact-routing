import matplotlib.pyplot as plot
from matplotlib.ticker import MaxNLocator
from matplotlib.pyplot import figure

nodes = []
edges = []
edges_per_node = []

for year in range(1, 20):
    if year < 10:
        dataFile = open('results/stage1/data-all-200' + str(year) + '.dat')
        line = dataFile.readline()
        line = line.split()
        nodes.append(line[3])

        line = dataFile.readline()
        line = line.split()
        edges.append(line[3])
        dataFile.close()

    else:
        dataFile = open('results/stage1/data-all-20' + str(year) + '.dat')
        line = dataFile.readline()
        line = line.split()
        nodes.append(line[3])

        line = dataFile.readline()
        line = line.split()
        edges.append(line[3])
        dataFile.close()

for year in range(len(nodes)):
    edges_per_node.append(int(edges[year])/int(nodes[year]))


years = [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019]
graph = figure().gca()
plot.plot(years, edges_per_node, label = 'Average Number of Edges per Node')

plot.xlim(2000, 2020)
graph.xaxis.set_major_locator(MaxNLocator(integer=True))
plot.title('Average Number of Edges per Node')

plot.show()