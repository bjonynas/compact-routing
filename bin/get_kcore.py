import networkx as nx
import sys
import os
import math

graph = nx.Graph()
filename = sys.argv[1]
sourceFile = open('./results/stage1/data-' + filename + '.dat', 'r')

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

kc = nx.algorithms.core.k_shell(graph)

shellSizes = []
nodesInShell = kc.number_of_nodes()
shellSizes.append(nodesInShell)
x = 1

#calculate k-core shells until a shell with at least root(n log(n)) is found
while nodesInShell < math.sqrt(graph.number_of_nodes() * math.log(graph.number_of_nodes())):
    kc = nx.algorithms.core.k_shell(graph, x)
    nodesInShell = kc.number_of_nodes()
    shellSizes.append(nodesInShell)
    x = x + 1

if not os.path.exists('./results/stage2'):
    os.makedirs('./results/stage2')

saveFile = open('./results/stage2/kcore-' + sys.argv[1] + '.dat', 'w+')
saveFile.write('kcore sizes: ' + str(shellSizes) + '\n')
for node in kc.nodes():
    saveFile.write(str(node) + '\n')
saveFile.close()
