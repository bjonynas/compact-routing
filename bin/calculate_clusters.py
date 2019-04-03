import os
import sys

class Node:
    def __init__(self, id):
        self.id = id
        self.table = {}
        self.landmark = False
        self.connected = False

#import the landmark set
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
            graph[node1].landmark = True
            graph[node1].connected= True
    if node2 not in graph.keys():
        graph[node2] = Node(node2)
        if node2 in landmarkSet:
            graph[node2].landmark = True
            graph[node2].connected = True

    #adjust the values of connected_to and connected_from depending on whether either node is a landmark
    graph[node1].table[node2] = [graph[node2], 1]
    graph[node2].table[node1] = [graph[node1], 1]
    if graph[node1].landmark:
        graph[node2].connected = True
    if graph[node2].landmark:
        graph[node1].connected = True

    line = dataFile.readline()

dataFile.close()

for key in graph.keys():
    print 'id: ' + graph[key].id + ' ' + ' landmark? ' + str(graph[key].landmark) + ' connected? ' + str(graph[key].connected)