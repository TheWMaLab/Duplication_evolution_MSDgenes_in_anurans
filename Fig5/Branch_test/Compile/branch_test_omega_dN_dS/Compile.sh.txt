#mkdir folder
for i in  `cat listb`
do 
cd $i
cp *_F3x4_bfree.out ../folder/
cd -
done

cp listb folder/
cd folder/

#compile dS 
for i in `cat listb`
do
grep -A1 "dS tree:"  "$i"_F3x4_bfree.out |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>dstrr
done

#compile dN 
for i in `cat listb`
do
grep -A1 "dN tree:"  "$i"_F3x4_bfree.out |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>dntree
done

#compile Omega 
for i in `cat listb`
do
grep -A1 "w ratios as labels for TreeView:"  "$i"_F3x4_bfree.out |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>omega
done

sed 's/ //g' dstrr
sed -i 's/ //g' dstrr
sed -i 's/:/\t/g' dstrr
sed -i 's/ //g' dntree
sed -i 's/:/\t/g' dntree
sed -i 's/ //g' omega
sed -i 's/#/\t/g' omega
paste  omega dntree  dstrr |cut -f1,2,4,6 |awk '{print $1"\t"$2"\t"$3"\t"$4}' >tab_sep_mega_file2
