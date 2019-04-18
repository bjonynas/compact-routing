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

#calculate all shortest paths in the graph
paths = nx.algorithms.shortest_paths.generic.shortest_path(graph)

pathLenTotal = 0
numPaths = 0
pathLenFreq = {}

#add a destination node to a node's cluster if the path to the destination is shorter than to any landmark node
for node in graph.nodes:
    cluster = {}

    for destination in graph.nodes:
        if node != destination:

            destPath = paths[destination][node]
            pathLenTotal = pathLenTotal + len(destPath)
            numPaths = numPaths + 1
            if len(destPath) not in pathLenFreq.keys():
                pathLenFreq[len(destPath)] = 1
            else:
                pathLenFreq[len(destPath)] = pathLenFreq[len(destPath)] + 1

            for landmark in landmarkSet:
                if len(destPath) < len(paths[destination][landmark]):
                    cluster[destination] = [destPath[0], destPath[1]]
    graph.nodes[node]['cluster'] = cluster

#check that all clusters are under the size limit of 4 * sqrt(n log n)
violations = 0
totalClusterSize = 0
vioNodes = []
n = graph.number_of_nodes()
limit = 4*math.sqrt(n * math.log(n))

for nodeId in graph.nodes:
    totalClusterSize = totalClusterSize + len(graph.nodes[nodeId]['cluster'])
    if len(graph.nodes[nodeId]['cluster']) > limit:
        vioNodes.append(nodeId)
        violations = violations + 1

if not os.path.exists('./results/stage3'):
    os.makedirs('./results/stage3')

saveFile = open('results/stage3/cluster-' + sys.argv[1] + '.dat', 'w+')
saveFile.write('violations: ' + str(violations) + '\n')
saveFile.close()

print pathLenFreq

pathFile = open('results/stage3/path-data-' + sys.argv[1] + '.dat', 'w+')
pathFile.write('average path length: ' + str(pathLenTotal / numPaths) + '\n')
for length in pathLenFreq.keys():
    pathFile.write(str(length) + ' ' + str(pathLenFreq[length]) + '\n')
pathFile.close()

#calculate final cluster size
numRuns = 1
while violations > 0:
    numRuns = numRuns + 1
    for v in vioNodes:
        landmarkSet.append(vioNodes[v])
    violations = 0
    vioNodes = []
    totalClusterSize = 0

    for node in graph.nodes:
        cluster = {}

        for destination in graph.nodes:
            if node != destination:
                destPath = paths[destination][node]
                for landmark in landmarkSet:
                    if len(destPath) < len(paths[destination][landmark]):
                        cluster[destination] = [destPath[0], destPath[1]]
        graph.nodes[node]['cluster'] = cluster

    for nodeId in graph.nodes:
        totalClusterSize = totalClusterSize + len(graph.nodes[nodeId]['cluster'])
        if len(graph.nodes[nodeId]['cluster']) > limit:
            vioNodes.append(nodeId)
            violations = violations + 1

    print sys.argv[1] + ' run: ' + numRuns + ', violations: ' + violations

saveFile = open('results/stage3/cluster-' + sys.argv[1] + '.dat', 'a')
saveFile.write('average cluster size: ' + str(totalClusterSize/graph.number_of_nodes()) + '\n')
saveFile.write('final landmark set: ' + str(landmarkSet) + '\n')
for nodeId in graph.nodes:
    node = graph.nodes[nodeId]
    saveFile.write(nodeId + '\n')

    for destId in node['cluster'].keys():
        saveFile.write(destId + ', ' + node['cluster'][destId][0] + '\n')
    saveFile.write('\n')

saveFile.close()

end = time.time()
print 'runtime for cluster calculations for ' + sys.argv[1] + ': ' + str(int(end - start))