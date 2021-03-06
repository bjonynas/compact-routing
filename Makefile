DATA_ALL = results/stage1/data-all-2019.dat \
			results/stage1/data-all-2018.dat \
			results/stage1/data-all-2017.dat \
			results/stage1/data-all-2016.dat \
			results/stage1/data-all-2015.dat \
			results/stage1/data-all-2014.dat \
			results/stage1/data-all-2013.dat \
			results/stage1/data-all-2012.dat \
			results/stage1/data-all-2011.dat \
			results/stage1/data-all-2010.dat \
			results/stage1/data-all-2009.dat \
			results/stage1/data-all-2008.dat \
			results/stage1/data-all-2007.dat \
			results/stage1/data-all-2006.dat \
			results/stage1/data-all-2005.dat \
			results/stage1/data-all-2004.dat \
			results/stage1/data-all-2003.dat \
			results/stage1/data-all-2002.dat \
			results/stage1/data-all-2001.dat

DATA_OLDEST = results/stage1/data-oldest-2019.dat \
				results/stage1/data-oldest-2018.dat \
				results/stage1/data-oldest-2017.dat \
				results/stage1/data-oldest-2016.dat \
				results/stage1/data-oldest-2015.dat \
				results/stage1/data-oldest-2014.dat \
				results/stage1/data-oldest-2013.dat \
				results/stage1/data-oldest-2012.dat \
				results/stage1/data-oldest-2011.dat \
				results/stage1/data-oldest-2010.dat \
				results/stage1/data-oldest-2009.dat \
				results/stage1/data-oldest-2008.dat \
				results/stage1/data-oldest-2007.dat \
				results/stage1/data-oldest-2006.dat \
				results/stage1/data-oldest-2005.dat \
				results/stage1/data-oldest-2004.dat \
				results/stage1/data-oldest-2003.dat \
				results/stage1/data-oldest-2002.dat \
				results/stage1/data-oldest-2001.dat

K_SHELLS = results/stage2/kshells-all-2019.dat \
			results/stage2/kshells-all-2019.dat \
			results/stage2/kshells-all-2018.dat \
			results/stage2/kshells-all-2017.dat \
			results/stage2/kshells-all-2016.dat \
			results/stage2/kshells-all-2015.dat \
			results/stage2/kshells-all-2014.dat \
			results/stage2/kshells-all-2013.dat \
			results/stage2/kshells-all-2012.dat \
			results/stage2/kshells-all-2011.dat \
			results/stage2/kshells-all-2010.dat \
			results/stage2/kshells-all-2009.dat \
			results/stage2/kshells-all-2008.dat \
			results/stage2/kshells-all-2007.dat \
			results/stage2/kshells-all-2006.dat \
			results/stage2/kshells-all-2005.dat \
			results/stage2/kshells-all-2004.dat \
			results/stage2/kshells-all-2003.dat \
			results/stage2/kshells-all-2002.dat \
			results/stage2/kshells-all-2001.dat

CLUSTERS = results/stage3/cluster-all-2001.dat \
			results/stage3/cluster-all-2002.dat \
			results/stage3/cluster-all-2003.dat \
			results/stage3/cluster-all-2004.dat \
			results/stage3/cluster-all-2005.dat \
			results/stage3/cluster-all-2006.dat \
			results/stage3/cluster-all-2007.dat \
			results/stage3/cluster-all-2008.dat \
			results/stage3/cluster-all-2009.dat \
			results/stage3/cluster-all-2010.dat \
			results/stage3/cluster-all-2011.dat \
			results/stage3/cluster-all-2012.dat \
			results/stage3/cluster-all-2013.dat \
			results/stage3/cluster-all-2014.dat \
			results/stage3/cluster-all-2015.dat \
			results/stage3/cluster-all-2016.dat \
			results/stage3/cluster-all-2017.dat \
			results/stage3/cluster-all-2018.dat \
			results/stage3/cluster-all-2019.dat

PATH_STRETCH = results/stage4/path-stretch-all-2001.dat \
				results/stage4/path-stretch-all-2002.dat \
				results/stage4/path-stretch-all-2003.dat \
				results/stage4/path-stretch-all-2004.dat \
				results/stage4/path-stretch-all-2005.dat \
				results/stage4/path-stretch-all-2006.dat \
				results/stage4/path-stretch-all-2007.dat \
				results/stage4/path-stretch-all-2008.dat \
				results/stage4/path-stretch-all-2009.dat \
				results/stage4/path-stretch-all-2010.dat \
				results/stage4/path-stretch-all-2011.dat \
				results/stage4/path-stretch-all-2012.dat \
				results/stage4/path-stretch-all-2013.dat \
				results/stage4/path-stretch-all-2014.dat \
				results/stage4/path-stretch-all-2015.dat \
				results/stage4/path-stretch-all-2016.dat \
				results/stage4/path-stretch-all-2017.dat \
				results/stage4/path-stretch-all-2018.dat \
				results/stage4/path-stretch-all-2019.dat

FIGURES = dissertation/images/average-cluster-size.pdf \
			dissertation/images/k-cores.pdf \
			dissertation/images/nodes-with-clusters.pdf \
			dissertation/images/num-nodes-all.pdf \
			dissertation/images/num-nodes.pdf \
			dissertation/images/num_edges.pdf \
			dissertation/images/path-averages.pdf \
			dissertation/images/path-frequencies.pdf \
			dissertation/images/path-stretch.pdf

all: MSci_project_2133815.pdf

setup:
	pip install networkx --user
	pip install matplotlib --user
	export LD_LIBRARY_PATH="/home/2133815j/.apps/lib/:$LD_LIBRARY_PATH"

#-------------------------------------Stage 1-------------------------------------#

results/stage1/data-all-2019.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2019
results/stage1/data-all-2018.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2018
results/stage1/data-all-2017.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2017
results/stage1/data-all-2016.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2016
results/stage1/data-all-2015.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2015
results/stage1/data-all-2014.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2014
results/stage1/data-all-2013.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2013
results/stage1/data-all-2012.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2012
results/stage1/data-all-2011.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2011
results/stage1/data-all-2010.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2010
results/stage1/data-all-2009.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2009
results/stage1/data-all-2008.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2008
results/stage1/data-all-2007.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2007
results/stage1/data-all-2006.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2006
results/stage1/data-all-2005.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2005
results/stage1/data-all-2004.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2004
results/stage1/data-all-2003.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2003
results/stage1/data-all-2002.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2002
results/stage1/data-all-2001.dat: bin/get_data_all.py setup
	python2.7 bin/get_data_all.py 2001

results/stage1/data-oldest-2019.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2019
results/stage1/data-oldest-2018.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2018
results/stage1/data-oldest-2017.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2017
results/stage1/data-oldest-2016.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2016
results/stage1/data-oldest-2015.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2015
results/stage1/data-oldest-2014.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2014
results/stage1/data-oldest-2013.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2013
results/stage1/data-oldest-2012.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2012
results/stage1/data-oldest-2011.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2011
results/stage1/data-oldest-2010.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2010
results/stage1/data-oldest-2009.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2009
results/stage1/data-oldest-2008.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2008
results/stage1/data-oldest-2007.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2007
results/stage1/data-oldest-2006.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2006
results/stage1/data-oldest-2005.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2005
results/stage1/data-oldest-2004.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2004
results/stage1/data-oldest-2003.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2003
results/stage1/data-oldest-2002.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2002
results/stage1/data-oldest-2001.dat: bin/get_data_oldest.py setup
	python2.7 bin/get_data_oldest.py 2001
#-------------------------------------Stage 2-------------------------------------#

results/stage2/kshells-all-2019.dat: results/stage1/data-all-2019.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2019
results/stage2/kshells-all-2018.dat: results/stage1/data-all-2018.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2018
results/stage2/kshells-all-2017.dat: results/stage1/data-all-2017.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2017
results/stage2/kshells-all-2016.dat: results/stage1/data-all-2016.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2016
results/stage2/kshells-all-2015.dat: results/stage1/data-all-2015.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2015
results/stage2/kshells-all-2014.dat: results/stage1/data-all-2014.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2014
results/stage2/kshells-all-2013.dat: results/stage1/data-all-2013.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2013
results/stage2/kshells-all-2012.dat: results/stage1/data-all-2012.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2012
results/stage2/kshells-all-2011.dat: results/stage1/data-all-2011.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2011
results/stage2/kshells-all-2010.dat: results/stage1/data-all-2010.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2010
results/stage2/kshells-all-2009.dat: results/stage1/data-all-2009.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2009
results/stage2/kshells-all-2008.dat: results/stage1/data-all-2008.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2008
results/stage2/kshells-all-2007.dat: results/stage1/data-all-2007.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2007
results/stage2/kshells-all-2006.dat: results/stage1/data-all-2006.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2006
results/stage2/kshells-all-2005.dat: results/stage1/data-all-2005.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2005
results/stage2/kshells-all-2004.dat: results/stage1/data-all-2004.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2004
results/stage2/kshells-all-2003.dat: results/stage1/data-all-2003.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2003
results/stage2/kshells-all-2002.dat: results/stage1/data-all-2002.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2002
results/stage2/kshells-all-2001.dat: results/stage1/data-all-2001.dat bin/calculate_kshells.py
	python2.7 bin/calculate_kshells.py all-2001

#-------------------------------------Stage 3-------------------------------------#

results/stage3/cluster-all-2001.dat results/stage3/path-data-all-2001.dat: results/stage1/data-all-2001.dat results/stage2/kshells-all-2001.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2001 0
results/stage3/cluster-all-2002.dat results/stage3/path-data-all-2002.dat: results/stage1/data-all-2002.dat results/stage2/kshells-all-2002.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2002 0
results/stage3/cluster-all-2003.dat results/stage3/path-data-all-2003.dat: results/stage1/data-all-2003.dat results/stage2/kshells-all-2003.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2003 0
results/stage3/cluster-all-2004.dat results/stage3/path-data-all-2004.dat: results/stage1/data-all-2004.dat results/stage2/kshells-all-2004.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2004 0
results/stage3/cluster-all-2005.dat results/stage3/path-data-all-2005.dat: results/stage1/data-all-2005.dat results/stage2/kshells-all-2005.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2005 0
results/stage3/cluster-all-2006.dat results/stage3/path-data-all-2006.dat: results/stage1/data-all-2006.dat results/stage2/kshells-all-2006.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2006 0
results/stage3/cluster-all-2007.dat results/stage3/path-data-all-2007.dat: results/stage1/data-all-2007.dat results/stage2/kshells-all-2007.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2007 0
results/stage3/cluster-all-2008.dat results/stage3/path-data-all-2008.dat: results/stage1/data-all-2008.dat results/stage2/kshells-all-2008.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2008 0
results/stage3/cluster-all-2009.dat results/stage3/path-data-all-2009.dat: results/stage1/data-all-2009.dat results/stage2/kshells-all-2009.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2009 0
results/stage3/cluster-all-2010.dat results/stage3/path-data-all-2010.dat: results/stage1/data-all-2010.dat results/stage2/kshells-all-2010.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2010 0
results/stage3/cluster-all-2011.dat results/stage3/path-data-all-2011.dat: results/stage1/data-all-2011.dat results/stage2/kshells-all-2011.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2011 0
results/stage3/cluster-all-2012.dat results/stage3/path-data-all-2012.dat: results/stage1/data-all-2012.dat results/stage2/kshells-all-2012.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2012 0
results/stage3/cluster-all-2013.dat results/stage3/path-data-all-2013.dat: results/stage1/data-all-2013.dat results/stage2/kshells-all-2013.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2013 0
results/stage3/cluster-all-2014.dat results/stage3/path-data-all-2014.dat: results/stage1/data-all-2014.dat results/stage2/kshells-all-2014.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2014 0
results/stage3/cluster-all-2015.dat results/stage3/path-data-all-2015.dat: results/stage1/data-all-2015.dat results/stage2/kshells-all-2015.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2015 0
results/stage3/cluster-all-2016.dat results/stage3/path-data-all-2016.dat: results/stage1/data-all-2016.dat results/stage2/kshells-all-2016.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2016 0
results/stage3/cluster-all-2017.dat results/stage3/path-data-all-2017.dat: results/stage1/data-all-2017.dat results/stage2/kshells-all-2017.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2017 0
results/stage3/cluster-all-2018.dat results/stage3/path-data-all-2018.dat: results/stage1/data-all-2018.dat results/stage2/kshells-all-2018.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2018 0
results/stage3/cluster-all-2019.dat results/stage3/path-data-all-2019.dat: results/stage1/data-all-2019.dat results/stage2/kshells-all-2019.dat bin/calculate_clusters.py
	python2.7 bin/calculate_clusters.py all-2019 0

#-------------------------------------Stage 4-------------------------------------#

results/stage4/path-stretch-all-2001.dat: results/stage1/data-all-2001.dat results/stage2/kshells-all-2001.dat results/stage3/cluster-all-2001.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2001 0
results/stage4/path-stretch-all-2002.dat: results/stage1/data-all-2002.dat results/stage2/kshells-all-2002.dat results/stage3/cluster-all-2002.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2002 0
results/stage4/path-stretch-all-2003.dat: results/stage1/data-all-2003.dat results/stage2/kshells-all-2003.dat results/stage3/cluster-all-2003.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2003 0
results/stage4/path-stretch-all-2004.dat: results/stage1/data-all-2004.dat results/stage2/kshells-all-2004.dat results/stage3/cluster-all-2004.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2004 0
results/stage4/path-stretch-all-2005.dat: results/stage1/data-all-2005.dat results/stage2/kshells-all-2005.dat results/stage3/cluster-all-2005.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2005 0
results/stage4/path-stretch-all-2006.dat: results/stage1/data-all-2006.dat results/stage2/kshells-all-2006.dat results/stage3/cluster-all-2006.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2006 0
results/stage4/path-stretch-all-2007.dat: results/stage1/data-all-2007.dat results/stage2/kshells-all-2007.dat results/stage3/cluster-all-2007.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2007 0
results/stage4/path-stretch-all-2008.dat: results/stage1/data-all-2008.dat results/stage2/kshells-all-2008.dat results/stage3/cluster-all-2008.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2008 0
results/stage4/path-stretch-all-2009.dat: results/stage1/data-all-2009.dat results/stage2/kshells-all-2009.dat results/stage3/cluster-all-2009.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2009 0
results/stage4/path-stretch-all-2010.dat: results/stage1/data-all-2010.dat results/stage2/kshells-all-2010.dat results/stage3/cluster-all-2010.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2010 0
results/stage4/path-stretch-all-2011.dat: results/stage1/data-all-2011.dat results/stage2/kshells-all-2011.dat results/stage3/cluster-all-2011.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2011 0
results/stage4/path-stretch-all-2012.dat: results/stage1/data-all-2012.dat results/stage2/kshells-all-2012.dat results/stage3/cluster-all-2012.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2012 0
results/stage4/path-stretch-all-2013.dat: results/stage1/data-all-2013.dat results/stage2/kshells-all-2013.dat results/stage3/cluster-all-2013.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2013 0
results/stage4/path-stretch-all-2014.dat: results/stage1/data-all-2014.dat results/stage2/kshells-all-2014.dat results/stage3/cluster-all-2014.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2014 0
results/stage4/path-stretch-all-2015.dat: results/stage1/data-all-2015.dat results/stage2/kshells-all-2015.dat results/stage3/cluster-all-2015.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2015 0
results/stage4/path-stretch-all-2016.dat: results/stage1/data-all-2016.dat results/stage2/kshells-all-2016.dat results/stage3/cluster-all-2016.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2016 0
results/stage4/path-stretch-all-2017.dat: results/stage1/data-all-2017.dat results/stage2/kshells-all-2017.dat results/stage3/cluster-all-2017.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2017 0
results/stage4/path-stretch-all-2018.dat: results/stage1/data-all-2018.dat results/stage2/kshells-all-2018.dat results/stage3/cluster-all-2018.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2018 0
results/stage4/path-stretch-all-2019.dat: results/stage1/data-all-2019.dat results/stage2/kshells-all-2019.dat results/stage3/cluster-all-2019.dat bin/calculate_path_stretch.py
	python2.7 bin/calculate_path_stretch.py all-2019 0

#-------------------------------------Figures-------------------------------------#

dissertation/images/num-nodes.pdf: $(DATA_ALL) $(DATA_OLDEST) bin/plot_nodes.py
	python2.7 bin/plot_nodes.py
dissertation/images/num-nodes-all.pdf: $(DATA_ALL) bin/plot_nodes-all.py
	python2.7 bin/plot_nodes-all.py
dissertation/images/num_edges.pdf: $(DATA_ALL) $(DATA_OLDEST) bin/plot_edges.py
	python2.7 bin/plot_edges.py
dissertation/images/k-shells.pdf: $(K_SHELLS) bin/plot_kshells.py
	python2.7 bin/plot_kshells.py
dissertation/images/average-cluster-size.pdf dissertation/images/nodes-with-clusters.pdf: $(CLUSTERS) bin/plot_average_clusters.py
	python2.7 bin/plot_average_clusters.py
dissertation/images/path-averages.pdf: $(CLUSTERS) bin/plot_average_paths.py
	python2.7 bin/plot_average_paths.py
dissertation/images/path-frequencies.pdf: $(CLUSTERS) bin/plot_path_length_frequencies.py
	python2.7 bin/plot_path_length_frequencies.py
dissertation/images/path-stretch.pdf: $(PATH_STRETCH) bin/plot_path_stretch.py
	python2.7 bin/plot_path_stretch.py


#-------------------------------------Dissertation-------------------------------------#

MSci_project_2133815.pdf: $(FIGURES)
	pdflatex dissertation/MSci_project_2133815.tex

#--------------------------------------------------------------------------#

clean:

	rm $(DATA_ALL)
	rm $(DATA_OLDEST)
	rm $(K_SHELLS)
	rm $(CLUSTERS)
	rm $(PATH_STRETCH)
	rm $(FIGURES)
	rm -rf results

	rm dissertation.aux
	rm dissertation.log
	rm dissertation.out
	rm dissertation.pdf