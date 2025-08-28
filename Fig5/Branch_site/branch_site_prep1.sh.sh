#make labels as forground

tree=`ls MSA.PRANK.aln.With_Names.raxml.bestTree`
for i in `grep ">" MSA.PRANK.aln.With_Names |sed 's/>//g'`
do
sed "s/$i/$i #1/g" "$tree" > "$i".nwk
done


grep ">" MSA.PRANK.aln.With_Names |sed 's/>//g' >listb

for i in `cat listb`
do
mkdir $i
done

for i in `cat listb`
do
mv "$i".nwk  $i/
done



for i in `cat listb`
do 
cp demo.ctl $i/
cd $i
sed -i "s/aaaaaa/$i/g" demo.ctl
cd -
done



for i in `cat listb`
do
cp script_brach_site.sh  MSA.PRANK.aln.With_Names  $i/
done




for i in `cat listb`
do 
cd $i
sbatch script_brach_site.sh
cd -
done

