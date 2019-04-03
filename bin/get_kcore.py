import networkx as nx
import sys
import os

graph = nx.Graph()
filename = sys.argv[1]
sourceFile = open('./results/stage1/' + filename, 'r')

line = sourceFile.readline()
line = sourceFile.readline()
line = sourceFile.readline()
line = sourceFile.readline()

while line != '':

    line = line.replace('(', '')
    line = line.replace(')', '')
    line = line.replace("'", '')
    line = line.replace(',', '')
    line = line.split()

    graph.add_edge(int(line[0]), int(line[1]))
    
    line = sourceFile.readline()
    
sourceFile.close()
kc = nx.algorithms.core.k_core(graph)

filename = filename.split('-')

if not os.path.exists('./results/stage2'):
    os.makedirs('./results/stage2')

saveFile = open('./results/stage2/kcore-' + filename[1] +'-' + filename[2], 'w+')

saveFile.write('kcore size: ' + str(kc.number_of_nodes()) + '\n')
for node in kc.nodes():
    saveFile.write(str(node) + '\n')
saveFile.close()
