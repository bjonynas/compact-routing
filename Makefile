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

K_CORES = results/stage2/kcore-all-2019.dat \
			results/stage2/kcore-all-2019.dat \
			results/stage2/kcore-all-2018.dat \
			results/stage2/kcore-all-2017.dat \
			results/stage2/kcore-all-2016.dat \
			results/stage2/kcore-all-2015.dat \
			results/stage2/kcore-all-2014.dat \
			results/stage2/kcore-all-2013.dat \
			results/stage2/kcore-all-2012.dat \
			results/stage2/kcore-all-2011.dat \
			results/stage2/kcore-all-2010.dat \
			results/stage2/kcore-all-2009.dat \
			results/stage2/kcore-all-2008.dat \
			results/stage2/kcore-all-2007.dat \
			results/stage2/kcore-all-2006.dat \
			results/stage2/kcore-all-2005.dat \
			results/stage2/kcore-all-2004.dat \
			results/stage2/kcore-all-2003.dat \
			results/stage2/kcore-all-2002.dat \
			results/stage2/kcore-all-2001.dat \
			results/stage2/kcore-oldest-2019.dat \
			results/stage2/kcore-oldest-2018.dat \
			results/stage2/kcore-oldest-2017.dat \
			results/stage2/kcore-oldest-2016.dat \
			results/stage2/kcore-oldest-2015.dat \
			results/stage2/kcore-oldest-2014.dat \
			results/stage2/kcore-oldest-2013.dat \
			results/stage2/kcore-oldest-2012.dat \
			results/stage2/kcore-oldest-2011.dat \
			results/stage2/kcore-oldest-2010.dat \
			results/stage2/kcore-oldest-2009.dat \
			results/stage2/kcore-oldest-2008.dat \
			results/stage2/kcore-oldest-2007.dat \
			results/stage2/kcore-oldest-2006.dat \
			results/stage2/kcore-oldest-2005.dat \
			results/stage2/kcore-oldest-2004.dat \
			results/stage2/kcore-oldest-2003.dat \
			results/stage2/kcore-oldest-2002.dat \
			results/stage2/kcore-oldest-2001.dat

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
			results/stage3/cluster-all-2019.dat \
			results/stage3/cluster-oldest-2001.dat \
			results/stage3/cluster-oldest-2002.dat \
			results/stage3/cluster-oldest-2003.dat \
			results/stage3/cluster-oldest-2004.dat \
			results/stage3/cluster-oldest-2005.dat \
			results/stage3/cluster-oldest-2006.dat \
			results/stage3/cluster-oldest-2007.dat \
			results/stage3/cluster-oldest-2008.dat \
			results/stage3/cluster-oldest-2009.dat \
			results/stage3/cluster-oldest-2010.dat \
			results/stage3/cluster-oldest-2011.dat \
			results/stage3/cluster-oldest-2012.dat \
			results/stage3/cluster-oldest-2013.dat \
			results/stage3/cluster-oldest-2014.dat \
			results/stage3/cluster-oldest-2015.dat \
			results/stage3/cluster-oldest-2016.dat \
			results/stage3/cluster-oldest-2017.dat \
			results/stage3/cluster-oldest-2018.dat \
			results/stage3/cluster-oldest-2019.dat

all: $(CLUSTERS)

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

results/stage2/kcore-all-2019.dat: results/stage1/data-all-2019.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2019.dat
results/stage2/kcore-all-2018.dat: results/stage1/data-all-2018.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2018.dat
results/stage2/kcore-all-2017.dat: results/stage1/data-all-2017.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2017.dat
results/stage2/kcore-all-2016.dat: results/stage1/data-all-2016.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2016.dat
results/stage2/kcore-all-2015.dat: results/stage1/data-all-2015.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2015.dat
results/stage2/kcore-all-2014.dat: results/stage1/data-all-2014.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2014.dat
results/stage2/kcore-all-2013.dat: results/stage1/data-all-2013.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2013.dat
results/stage2/kcore-all-2012.dat: results/stage1/data-all-2012.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2012.dat
results/stage2/kcore-all-2011.dat: results/stage1/data-all-2011.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2011.dat
results/stage2/kcore-all-2010.dat: results/stage1/data-all-2010.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2010.dat
results/stage2/kcore-all-2009.dat: results/stage1/data-all-2009.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2009.dat
results/stage2/kcore-all-2008.dat: results/stage1/data-all-2008.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2008.dat
results/stage2/kcore-all-2007.dat: results/stage1/data-all-2007.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2007.dat
results/stage2/kcore-all-2006.dat: results/stage1/data-all-2006.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2006.dat
results/stage2/kcore-all-2005.dat: results/stage1/data-all-2005.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2005.dat
results/stage2/kcore-all-2004.dat: results/stage1/data-all-2004.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2004.dat
results/stage2/kcore-all-2003.dat: results/stage1/data-all-2003.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2003.dat
results/stage2/kcore-all-2002.dat: results/stage1/data-all-2002.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2002.dat
results/stage2/kcore-all-2001.dat: results/stage1/data-all-2001.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2001.dat
results/stage2/kcore-oldest-2019.dat: results/stage1/data-oldest-2019.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2019.dat
results/stage2/kcore-oldest-2018.dat: results/stage1/data-oldest-2018.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2018.dat
results/stage2/kcore-oldest-2017.dat: results/stage1/data-oldest-2017.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2017.dat
results/stage2/kcore-oldest-2016.dat: results/stage1/data-oldest-2016.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2016.dat
results/stage2/kcore-oldest-2015.dat: results/stage1/data-oldest-2015.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2015.dat
results/stage2/kcore-oldest-2014.dat: results/stage1/data-oldest-2014.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2014.dat
results/stage2/kcore-oldest-2013.dat: results/stage1/data-oldest-2013.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2013.dat
results/stage2/kcore-oldest-2012.dat: results/stage1/data-oldest-2012.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2012.dat
results/stage2/kcore-oldest-2011.dat: results/stage1/data-oldest-2011.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2011.dat
results/stage2/kcore-oldest-2010.dat: results/stage1/data-oldest-2010.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2010.dat
results/stage2/kcore-oldest-2009.dat: results/stage1/data-oldest-2009.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2009.dat
results/stage2/kcore-oldest-2008.dat: results/stage1/data-oldest-2008.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2008.dat
results/stage2/kcore-oldest-2007.dat: results/stage1/data-oldest-2007.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2007.dat
results/stage2/kcore-oldest-2006.dat: results/stage1/data-oldest-2006.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2006.dat
results/stage2/kcore-oldest-2005.dat: results/stage1/data-oldest-2005.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2005.dat
results/stage2/kcore-oldest-2004.dat: results/stage1/data-oldest-2004.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2004.dat
results/stage2/kcore-oldest-2003.dat: results/stage1/data-oldest-2003.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2003.dat
results/stage2/kcore-oldest-2002.dat: results/stage1/data-oldest-2002.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2002.dat
results/stage2/kcore-oldest-2001.dat: results/stage1/data-oldest-2001.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2001.dat

#-------------------------------------Stage 3-------------------------------------#

results/stage3/cluster-all-2001.dat: results/stage1/data-all-2001.dat results/stage2/kcore-all-2001.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2001
results/stage3/cluster-all-2002.dat: results/stage1/data-all-2002.dat results/stage2/kcore-all-2002.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2002
results/stage3/cluster-all-2003.dat: results/stage1/data-all-2003.dat results/stage2/kcore-all-2003.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2003
results/stage3/cluster-all-2004.dat: results/stage1/data-all-2004.dat results/stage2/kcore-all-2004.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2004
results/stage3/cluster-all-2005.dat: results/stage1/data-all-2005.dat results/stage2/kcore-all-2005.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2005
results/stage3/cluster-all-2006.dat: results/stage1/data-all-2006.dat results/stage2/kcore-all-2006.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2006
results/stage3/cluster-all-2007.dat: results/stage1/data-all-2007.dat results/stage2/kcore-all-2007.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2007
results/stage3/cluster-all-2008.dat: results/stage1/data-all-2008.dat results/stage2/kcore-all-2008.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2008
results/stage3/cluster-all-2009.dat: results/stage1/data-all-2009.dat results/stage2/kcore-all-2009.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2009
results/stage3/cluster-all-2010.dat: results/stage1/data-all-2010.dat results/stage2/kcore-all-2010.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2010
results/stage3/cluster-all-2011.dat: results/stage1/data-all-2011.dat results/stage2/kcore-all-2011.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2011
results/stage3/cluster-all-2012.dat: results/stage1/data-all-2012.dat results/stage2/kcore-all-2012.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2012
results/stage3/cluster-all-2013.dat: results/stage1/data-all-2013.dat results/stage2/kcore-all-2013.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2013
results/stage3/cluster-all-2014.dat: results/stage1/data-all-2014.dat results/stage2/kcore-all-2014.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2014
results/stage3/cluster-all-2015.dat: results/stage1/data-all-2015.dat results/stage2/kcore-all-2015.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2015
results/stage3/cluster-all-2016.dat: results/stage1/data-all-2016.dat results/stage2/kcore-all-2016.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2016
results/stage3/cluster-all-2017.dat: results/stage1/data-all-2017.dat results/stage2/kcore-all-2017.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2017
results/stage3/cluster-all-2018.dat: results/stage1/data-all-2018.dat results/stage2/kcore-all-2018.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2018
results/stage3/cluster-all-2019.dat: results/stage1/data-all-2019.dat results/stage2/kcore-all-2019.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py all-2019

results/stage3/cluster-oldest-2001.dat: results/stage1/data-oldest-2001.dat results/stage2/kcore-oldest-2001.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2001
results/stage3/cluster-oldest-2002.dat: results/stage1/data-oldest-2002.dat results/stage2/kcore-oldest-2002.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2002
results/stage3/cluster-oldest-2003.dat: results/stage1/data-oldest-2003.dat results/stage2/kcore-oldest-2003.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2003
results/stage3/cluster-oldest-2004.dat: results/stage1/data-oldest-2004.dat results/stage2/kcore-oldest-2004.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2004
results/stage3/cluster-oldest-2005.dat: results/stage1/data-oldest-2005.dat results/stage2/kcore-oldest-2005.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2005
results/stage3/cluster-oldest-2006.dat: results/stage1/data-oldest-2006.dat results/stage2/kcore-oldest-2006.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2006
results/stage3/cluster-oldest-2007.dat: results/stage1/data-oldest-2007.dat results/stage2/kcore-oldest-2007.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2007
results/stage3/cluster-oldest-2008.dat: results/stage1/data-oldest-2008.dat results/stage2/kcore-oldest-2008.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2008
results/stage3/cluster-oldest-2009.dat: results/stage1/data-oldest-2009.dat results/stage2/kcore-oldest-2009.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2009
results/stage3/cluster-oldest-2010.dat: results/stage1/data-oldest-2010.dat results/stage2/kcore-oldest-2010.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2010
results/stage3/cluster-oldest-2011.dat: results/stage1/data-oldest-2011.dat results/stage2/kcore-oldest-2011.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2011
results/stage3/cluster-oldest-2012.dat: results/stage1/data-oldest-2012.dat results/stage2/kcore-oldest-2012.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2012
results/stage3/cluster-oldest-2013.dat: results/stage1/data-oldest-2013.dat results/stage2/kcore-oldest-2013.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2013
results/stage3/cluster-oldest-2014.dat: results/stage1/data-oldest-2014.dat results/stage2/kcore-oldest-2014.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2014
results/stage3/cluster-oldest-2015.dat: results/stage1/data-oldest-2015.dat results/stage2/kcore-oldest-2015.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2015
results/stage3/cluster-oldest-2016.dat: results/stage1/data-oldest-2016.dat results/stage2/kcore-oldest-2016.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2016
results/stage3/cluster-oldest-2017.dat: results/stage1/data-oldest-2017.dat results/stage2/kcore-oldest-2017.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2017
results/stage3/cluster-oldest-2018.dat: results/stage1/data-oldest-2018.dat results/stage2/kcore-oldest-2018.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2018
results/stage3/cluster-oldest-2019.dat: results/stage1/data-oldest-2019.dat results/stage2/kcore-oldest-2019.dat bin/verify_clusters.py
	python2.7 bin/verify_clusters.py oldest-2019
#--------------------------------------------------------------------------#

clean:

	rm $(DATA_ALL)
	rm $(DATA_OLDEST)

	rm $(K_CORES)
	rm -rf results
