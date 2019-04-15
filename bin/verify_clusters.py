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

for node in graph.nodes:
    #calculate the shortest path to all landmarks
    paths = {}
    for landmark in landmarkSet:
        path = nx.algorithms.shortest_paths.shortest_path(graph, node, landmark)
        paths[landmark] = path    
    graph.nodes[node]['paths'] = paths.copy()

    #assign each node to its closest landmark
    if node not in landmarkSet:
        min = paths.keys()[0]
        for path in paths.keys():
            if len(paths[path]) < len(min):
                min = path
        graph.nodes[node]['assignedLandmark'] = min
    else:
        graph.nodes[node]['assignedLandmark'] = node

#add destinations to the cluster for each node if the path to the destination is shorter through the node
#compared to routing through the destination's landmark
for nodeId in graph.nodes:
    node = graph.nodes[nodeId]
    cluster = {}

    for destinationId in graph.nodes:
        if nodeId != destinationId:
            destination = graph.nodes[destinationId]
            destLandmark = destination['assignedLandmark']

            distanceViaLandmark = len(node['paths'][destLandmark]) + len(destination['paths'][destLandmark]) -1
            path = nx.algorithms.shortest_paths.shortest_path(graph, nodeId, destinationId)

            if len(path) < distanceViaLandmark:
                cluster[destinationId] = path[1]
            else:
                1 + 1
    graph.nodes[nodeId]['cluster'] = cluster

#check that all clusters are under the limit of 4 * sqrt(n log n)
violations = 0
n = graph.number_of_nodes()
limit = 4*math.sqrt(math.log(n, n))

for nodeId in graph.nodes:
    if len(graph.nodes[nodeId]['cluster']) > limit:
        violations = violations + 1

if not os.path.exists('./results/stage3'):
    os.makedirs('./results/stage3')

saveFile = open('results/stage3/cluster-' + sys.argv[1] + '.dat', 'w+')
saveFile.write('violations: ' + str(violations) + '\n')

for nodeId in graph.nodes:
    node = graph.nodes[nodeId]
    saveFile.write(nodeId + '\n')
    saveFile.write(node['assignedLandmark'] + '\n')

    for destId in node['cluster'].keys():
        saveFile.write(destId + ', ' + node['cluster'][destId] + '\n')
    saveFile.write('\n')

saveFile.close()

end = time.time()
print 'runtime for ' + sys.argv[1] + ': ' + str(int(end - start))