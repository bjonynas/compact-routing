.DELETE_ON_ERROR:

TIME_COUNT_STATS = results/time-count-0.dat \
					results/time-count-1.dat \
					results/time-count-2.dat \
					results/time-count-3.dat \
					results/time-count-4.dat \
					results/time-count-5.dat \
					results/time-count-6.dat \
					results/time-count-7.dat \
					results/time-count-8.dat \
					results/time-count-9.dat \
					results/time-count-10.dat \
					results/time-count-11.dat \
					results/time-count-12.dat \
					results/time-count-13.dat \
					results/time-count-14.dat \
					results/time-count-15.dat \
					results/time-count-16.dat \
					results/time-count-17.dat \
					results/time-count-18.dat \
					results/time-count-19.dat \
					results/time-count-20.dat \
					results/time-count-21.dat \
					results/time-count-22.dat \
					results/time-count-23.dat \
					results/time-count-24.dat 

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
			results/stage1/data-all-2001.dat \
			results/stage1/data-all-2000.dat

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
				results/stage1/data-oldest-2001.dat \
				results/stage1/data-oldest-2000.dat

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
			results/stage2/kcore-all-2000.dat \
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
			results/stage2/kcore-oldest-2001.dat \
			results/stage2/kcore-oldest-2000.dat

all: $(K_CORES)


#-------------------------------------Stage 1-------------------------------------#

#results/time-count.dat: $(TIME_COUNT_STATS)
#	cat $^ > $@

#esults/time-count-%.dat: bin/collector_counter.py
#	python bin/time_counter.py $(patsubst results/time-count-%.dat,%,$@)

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
results/stage1/data-all-2000.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2000

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
results/stage1/data-oldest-2000.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2000

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
results/stage2/kcore-all-2000.dat: results/stage1/data-all-2000.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-all-2000.dat
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
results/stage2/kcore-oldest-2000.dat: results/stage1/data-oldest-2000.dat bin/get_kcore.py
	python2.7 bin/get_kcore.py data-oldest-2000.dat
#--------------------------------------------------------------------------#

clean:
#	rm $(TIME_COUNT_STATS)
#	rm results/time-count.dat

	rm $(DATA_ALL)
	rm $(DATA_OLDEST)

	rm $(K_CORES)
	rm -rf results
