import networkx as nx
import sys
import os
import time

graph = nx.Graph()
filename = sys.argv[1]
dataFile = open('./results/stage1/data-' + filename + '.dat', 'r')

line = dataFile.readline()
line = dataFile.readline()
line = dataFile.readline()
line = dataFile.readline()

while line != '':
    line = line.replace('(', '')
    line = line.replace(')', '')
    line = line.replace("'", '')
    line = line.replace(',', '')
    line = line.split()

    graph.add_edge(int(line[0]), int(line[1]))

    line = dataFile.readline()

dataFile.close()
# graph imported

start = time.time()
#calculate all shortest paths
paths = nx.algorithms.shortest_paths.generic.shortest_path(graph)

pathsDone = time.time()
print 'time to calculate shortest paths for ' + sys.argv[1] + ': ' + str(pathsDone - start)

total_path_length = 0
number_of_paths = 0
path_frequencies = {}

if not os.path.exists('./results/stage2'):
    os.makedirs('./results/stage2')

path_save_file = open('results/stage2/shortest-paths-' + sys.argv[1] + '.dat', 'w+')
for nodeId in graph.nodes().keys():
    path_save_file.write(str(nodeId) + '\n')
    for destinationId in paths.keys():
        if destinationId != nodeId:
            #this will help calculate stats about the paths in the snapshot
            destPath = paths[nodeId][destinationId]
            total_path_length = total_path_length + len(destPath)
            number_of_paths = number_of_paths + 1

            if len(destPath) not in path_frequencies.keys():
                path_frequencies[len(destPath)] = 1
            else:
                path_frequencies[len(destPath)] = path_frequencies[len(destPath)] + 1

            #write the path to each destination on a new line
            path_save_file.write(str(destPath) + '\n')
    path_save_file.write('\n')
path_save_file.close()

path_stats_file = open('results/stage2/path-stats-' + sys.argv[1] + '.dat', 'w+')
path_stats_file.write(str(int(total_path_length / number_of_paths)))
path_stats_file.write(str(path_frequencies))
path_stats_file.close()

done = time.time()
print 'time to write data for ' + sys.argv[1] + ': ' + str(done - start)