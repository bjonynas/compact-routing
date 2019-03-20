
STATS = results/topo-stats-1.dat \
				results/topo-stats-2.dat \
				results/topo-stats-3.dat \
				results/topo-stats-4.dat

DATA = data/data-2018.dat

all: results/topo-stats.dat

results/topo-stats-%.dat: bin/collector_counter.py
	bin/collector_counter.py $(patsubst results/topo-stats-%.dat,%,$@) > $@

results/topo-stats.dat: $(STATS)
	cat $^ > $@

data/data-2018.dat:
	bin/get-data.pt 2018

CC = clang
CFLAGS = -W -Wall

foo: foo.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm $(STATS)
	rm results/topo-stats.dat


