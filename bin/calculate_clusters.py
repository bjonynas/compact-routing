import os
import sys
import time
import networkx as nx
import math

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

#calculate all shortest paths in the graph
paths = nx.algorithms.shortest_paths.generic.shortest_path(graph)

#add a destination node to a node's cluster if the path to the destination is shorter than to any landmark node
for node in graph.nodes:
    cluster = {}

    for destination in graph.nodes:
        if node != destination:

            for landmark in landmarkSet:
                destPath = paths[node][destination]
                if len(destPath) < len(paths[node][landmark]):
                    cluster[destination] = destPath
    graph.nodes[node]['cluster'] = cluster

#check that all clusters are under the size limit of 4 * sqrt(n log n)
violations = 0
n = graph.number_of_nodes()

limit = 4*math.sqrt(n * math.log(n))

for nodeId in graph.nodes:
    if len(graph.nodes[nodeId]['cluster']) > limit:
        violations = violations + 1

if not os.path.exists('./results/stage3'):
    os.makedirs('./results/stage3')

saveFile = open('results/stage3/sh-cluster-' + sys.argv[1] + '.dat', 'w+')
saveFile.write('violations: ' + str(violations) + '\n')

for nodeId in graph.nodes:
    node = graph.nodes[nodeId]
    saveFile.write(nodeId + '\n')

    for destId in node['cluster'].keys():
        saveFile.write(destId + ', ' + node['cluster'][destId] + '\n')
    saveFile.write('\n')

saveFile.close()

end = time.time()
print 'runtime for all paths first ' + sys.argv[1] + ': ' + str(int(end - start))