collector_count: 
	number=1 ; while [[ $$number -le 42 ]] ; do \
        python collector_counter collector_count \
        ((number = number + 1)) ; \
    done

duration_count:
	number=0 ; while [[ $$number -le 12 ]] ; do \
        python time_counter 1546300800 (1546300800 + (number * 7200)) \
        ((number = number + 1)) ; \
    done

get_data: 
	number=0 ; while [[ $$number -le 18 ]] ; do \
        python get_data (1546300800 - (number * 31536000)) (1546308000 - (number * 31536000)) \
        ((number = number + 1)) ; \
    done