import os
import sys
import time

class Node:
    def __init__(self, id):
        self.id = id
        self.table = {}
        self.isLandmark = False
        self.assignedLandmark = None

class TableEntry:
    def __init__(self, node, distance, nextHop):
        self.node = node
        self.distance = distance
        self.nextHop = nextHop

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
graph = {}
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

    #add each node to the graph and set it as a landmark if it's in the landmark set
    if node1 not in graph.keys():
        graph[node1] = Node(node1)
        if node1 in landmarkSet:
            graph[node1].isLandmark = True
            graph[node1].assignedLandmark = graph[node1]
    if node2 not in graph.keys():
        graph[node2] = Node(node2)
        if node2 in landmarkSet:
            graph[node2].isLandmark = True
            graph[node2].assignedLandmark = graph[node2]

    #add each node to the other's routing table with the distance to that node and the next hop
    #if either of the nodes is a landmark, assign that node as the other's landmark
    graph[node1].table[node2] = TableEntry(graph[node2], 1, graph[node2])
    graph[node2].table[node1] = TableEntry(graph[node1], 1, graph[node1])
    if graph[node1].isLandmark and not graph[node2].isLandmark:
        graph[node2].assignedLandmark = graph[node1]
    if graph[node2].isLandmark and not graph[node1].isLandmark:
        graph[node1].assignedLandmark = graph[node2]

    line = dataFile.readline()

dataFile.close()
print 'graph imported'

#make sure all nodes have a path to get to all landmarks
#this will add edges between nodes until no changes to any table are made
changes = True
runs = 0
while changes:
    changes = False
    runs = runs + 1
    curTime = time.time()
    sys.stdout.write('runs: ' + str(runs) + ', runtime: ' + (str(int(curTime-start))) + '\n')
    sys.stdout.flush()

    nodesDone = 0
    for nodeId in graph.keys():
        node = graph[nodeId]
        for neighbourId in node.table.keys():
            neighbour = node.table[neighbourId].node

            for entryId in neighbour.table.keys():
                if entryId != node.id:
                    entry = neighbour.table[entryId]
                    distance = node.table[neighbourId].distance + neighbour.table[entryId].distance

                    if entryId not in node.table.keys() or distance < node.table[entryId].distance:
                        changes = True
                        node.table[entryId] = TableEntry(entry.node, distance, node.table[neighbourId].nextHop)
        nodesDone = nodesDone + 1
        curTime = time.time()
        sys.stdout.write('nodeDone: ' + str(nodesDone) + ', runtime: ' + (str(int(curTime - start))) + '\n')
        sys.stdout.flush()

#once all nodes know how to reach all other nodes, assign the closest landmark to each node
for nodeId in graph.keys():
    node = graph[nodeId]
    if not node.isLandmark:
        closest = node.table[landmarkSet[0]]
        for landmarkId in landmarkSet:
            if node.table[landmarkId].distance < closest.distance:
                closest = node.table[landmarkId]
        node.assignedLandmark = closest.node

print ''
for nodeId in graph.keys():
    print 'node: ' + graph[nodeId].id + ', assigned landmark: ' + graph[nodeId].assignedLandmark.id


#create clusters
end = time.time()
print '\n runtime for ' + sys.argv[1] + ': ' + str(int(end-start))