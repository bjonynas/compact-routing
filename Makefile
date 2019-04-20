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
			results/stage3/cluster-all-2019.dat \
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

all: $(CLUSTERS) $(DATA_OLDEST)

#-------------------------------------Stage 1-------------------------------------#

results/stage1/data-all-2019.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2019
results/stage1/data-all-2018.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2018
results/stage1/data-all-2017.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2017
results/stage1/data-all-2016.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2016
results/stage1/data-all-2015.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2015
results/stage1/data-all-2014.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2014
results/stage1/data-all-2013.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2013
results/stage1/data-all-2012.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2012
results/stage1/data-all-2011.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2011
results/stage1/data-all-2010.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2010
results/stage1/data-all-2009.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2009
results/stage1/data-all-2008.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2008
results/stage1/data-all-2007.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2007
results/stage1/data-all-2006.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2006
results/stage1/data-all-2005.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2005
results/stage1/data-all-2004.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2004
results/stage1/data-all-2003.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2003
results/stage1/data-all-2002.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2002
results/stage1/data-all-2001.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2001

results/stage1/data-oldest-2019.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2019
results/stage1/data-oldest-2018.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2018
results/stage1/data-oldest-2017.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2017
results/stage1/data-oldest-2016.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2016
results/stage1/data-oldest-2015.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2015
results/stage1/data-oldest-2014.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2014
results/stage1/data-oldest-2013.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2013
results/stage1/data-oldest-2012.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2012
results/stage1/data-oldest-2011.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2011
results/stage1/data-oldest-2010.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2010
results/stage1/data-oldest-2009.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2009
results/stage1/data-oldest-2008.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2008
results/stage1/data-oldest-2007.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2007
results/stage1/data-oldest-2006.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2006
results/stage1/data-oldest-2005.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2005
results/stage1/data-oldest-2004.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2004
results/stage1/data-oldest-2003.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2003
results/stage1/data-oldest-2002.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2002
results/stage1/data-oldest-2001.dat: bin/get_data_oldest.py
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

#--------------------------------------------------------------------------#

clean:

	rm $(DATA_ALL)
	rm $(DATA_OLDEST)

	rm $(K_CORES)
	rm -rf results
