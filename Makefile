
COL_COUNT_STATS = results/col-count-1.dat \
					results/col-count-2.dat \
					results/col-count-3.dat \
					results/col-count-4.dat \
					results/col-count-5.dat \
					results/col-count-6.dat \
					results/col-count-7.dat \
					results/col-count-8.dat \
					results/col-count-9.dat \
					results/col-count-10.dat \
					results/col-count-11.dat \
					results/col-count-12.dat \
					results/col-count-13.dat \
					results/col-count-14.dat \
					results/col-count-15.dat \
					results/col-count-16.dat \
					results/col-count-17.dat \
					results/col-count-18.dat \
					results/col-count-19.dat \
					results/col-count-20.dat \
					results/col-count-21.dat \
					results/col-count-22.dat \
					results/col-count-23.dat \
					results/col-count-24.dat \
					results/col-count-25.dat \
					results/col-count-26.dat \
					results/col-count-27.dat \
					results/col-count-28.dat \
					results/col-count-29.dat \
					results/col-count-30.dat \
					results/col-count-31.dat \
					results/col-count-32.dat \
					results/col-count-33.dat \
					results/col-count-34.dat \
					results/col-count-35.dat \
					results/col-count-36.dat \
					results/col-count-37.dat \
					results/col-count-38.dat \
					results/col-count-39.dat \
					results/col-count-40.dat \
					results/col-count-41.dat \
					results/col-count-42.dat \
			
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
					results/time-count-24.dat \

DATA_ALL = results/data-all-2019.dat \
			results/data-all-2017.dat \
			results/data-all-2016.dat \
			results/data-all-2015.dat \
			results/data-all-2014.dat \
			results/data-all-2013.dat \
			results/data-all-2012.dat \
			results/data-all-2011.dat \
			results/data-all-2010.dat \
			results/data-all-2009.dat \
			results/data-all-2008.dat \
			results/data-all-2007.dat \
			results/data-all-2006.dat \
			results/data-all-2005.dat \
			results/data-all-2004.dat \
			results/data-all-2003.dat \
			results/data-all-2002.dat \
			results/data-all-2001.dat \
			results/data-all-2000.dat \
			
DATA_OLDEST = results/data-all-2019.dat \
				results/data-all-2017.dat \
				results/data-all-2016.dat \
				results/data-all-2015.dat \
				results/data-all-2014.dat \
				results/data-all-2013.dat \
				results/data-all-2012.dat \
				results/data-all-2011.dat \
				results/data-all-2010.dat \
				results/data-all-2009.dat \
				results/data-all-2008.dat \
				results/data-all-2007.dat \
				results/data-all-2006.dat \
				results/data-all-2005.dat \
				results/data-all-2004.dat \
				results/data-all-2003.dat \
				results/data-all-2002.dat \
				results/data-all-2001.dat \
				results/data-all-2000.dat \

all: results/col-count.dat

#results/col-count.dat: $(COL_COUNT_STATS)
#	cat $^ > $@

#results/col-count-%.dat: bin/collector_counter.py
#	python2.7 bin/collector_counter.py $(patsubst results/col-count-%.dat,%,$@)

#results/time-count.dat: $(TIME_COUNT_STATS)
#	cat $^ > $@

#esults/time-count-%.dat: bin/collector_counter.py
#	python bin/time_counter.py $(patsubst results/time-count-%.dat,%,$@)

results/data-all-2019.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2019
results/data-all-2018.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2018
results/data-all-2017.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2017
results/data-all-2016.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2016
results/data-all-2015.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2015
results/data-all-2014.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2014
results/data-all-2013.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2013
results/data-all-2012.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2012
results/data-all-2011.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2011
results/data-all-2010.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2010
results/data-all-2009.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2009
results/data-all-2008.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2008
results/data-all-2007.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2007
results/data-all-2006.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2006
results/data-all-2005.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2005
results/data-all-2004.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2004
results/data-all-2003.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2003
results/data-all-2002.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2002
results/data-all-2001.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2001
results/data-all-2000.dat: bin/get_data_all.py
	python2.7 bin/get_data_all.py 2000

results/data-all-2019.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2019
results/data-all-2018.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2018
results/data-all-2017.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2017
results/data-all-2016.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2016
results/data-all-2015.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2015
results/data-all-2014.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2014
results/data-all-2013.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2013
results/data-all-2012.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2012
results/data-all-2011.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2011
results/data-all-2010.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2010
results/data-all-2009.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2009
results/data-all-2008.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2008
results/data-all-2007.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2007
results/data-all-2006.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2006
results/data-all-2005.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2005
results/data-all-2004.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2004
results/data-all-2003.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2003
results/data-all-2002.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2002
results/data-all-2001.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2001
results/data-all-2000.dat: bin/get_data_oldest.py
	python2.7 bin/get_data_oldest.py 2000

clean:
	rm $(COL_COUNT_STATS)
	rm results/col-count.dat
	
	rm $(TIME_COUNT_STATS)
	rm results/time-count.dat

	rm $(DATA_ALL)
	rm $(DATA_OLDEST)
