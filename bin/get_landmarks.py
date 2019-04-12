import os
import sys
import time
import networkx as nx

#import the landmark set
start = time.time()

landmarkSet = []
name = sys.argv[1]
landmarkFile = open('./results/stage2/kcore-' + name + '.dat', 'r')

line = landmarkFile.readline()
line = landmarkFile.readline()

while(line != ''):
    line = line.strip()
    landmarkSet.append(line)
    line = landmarkFile.readline()

landmarkFile.close()
print 'landmarks imported'

#import graph from the data file and set up the correct landmark nodes
graph = nx.Graph()
dataFile = open('./results/stage1/data-' + name + '.dat', 'r')

line = dataFile.readline()
line = dataFile.readline()
line = dataFile.readline()

line = dataFile.readline()

while line != '':
    line = line.replace('(', '')
    line = line.replace(')', '')
    line = line.replace(',', '')
    line = line.replace("'", '')
    line.strip()
    line = line.split()

    node1 = line[0]
    node2 = line[1]

    graph.add_edge(node1, node2)

    line = dataFile.readline()

dataFile.close()
print 'graph imported'

for node in graph.nodes:
    paths = {}
    for landmark in landmarkSet:
        path = nx.algorithms.shortest_paths.shortest_path(graph, node, landmark)
        paths[landmark] = path    
    graph.nodes[node]['paths'] = paths

    if node not in landmarkSet:
        min = paths.keys()[0]
        for path in paths.keys():
            if len(paths[path]) < len(min):
                min = path
        graph.nodes[node]['assignedLandmark'] = min
    else:
        graph.nodes[node]['assignedLandmark'] = node

print graph.nodes['12976']