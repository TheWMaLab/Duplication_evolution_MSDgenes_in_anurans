#merge output in a single file

for i in `cat list`; do grep -w -A3 "site class" $i.output |sed 's/site class/site_class/g' |sed 's/background w/background_w/g' | sed 's/foreground w/foreground_w/g' | awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5}' |sed "s/^/$i\t/g" >> branch_site_pelodup_with_gap_Result.file;done
