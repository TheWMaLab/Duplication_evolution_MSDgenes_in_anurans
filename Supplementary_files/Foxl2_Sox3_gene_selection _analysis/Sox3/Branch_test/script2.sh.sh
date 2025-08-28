#!/bin/bash
#SBATCH --job-name=paml
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --output=slurm_ind.%out
#SBATCH --output=slurm_ind.%err

module load R-bundle-Bioconductor/3.15-foss-2022a-R-4.2.1
module load PAML/4.9j-GCCcore-11.3.0




## For making alingment file into two line fasta file
for i in `ls MSA.PRANK.aln.With_Names`
do
sed -e '/^>/s/$/@/' -e 's/^>/#/' $i | tr -d '\n' |sort| tr "#" "\n" | tr "@" "\t"| sed -e 's/^/>/'|sed '1d' -|sed 's/\t/\n/g' > $i.faa
done


echo -e "2\tF3x4" > cffile
echo -e "1\tF1x4" >> cffile
echo -e 'M0\t0\t0\t0.4\nbfree\t2\t0\t0.4\nbneutral\t2\t1\t1' > model_details


## labelling foreground species in tree and running branch model using PAML.
tree=`ls MSA.PRANK.aln.With_Names.raxml.bestTree`
align=`ls MSA.PRANK.aln.With_Names.faa`
for i in `grep ">" listb |sed 's/>//g'`
do
sed "s/$i/$i #1/g" "$tree" > "$i".nwk
for m in M0 bfree bneutral
do
for cf in F3x4 F1x4
do
CF=`grep "$cf" cffile|cut -f1`
x=`echo "$i"_"$cf"_"$m"`
cp demo.ctl "$x".ctl
sed -i "s/ssssss/$align/g" $x.ctl
sed -i "s/tttttt/$i.nwk/g" $x.ctl
sed -i "s/CF/$CF/g" $x.ctl
sed -i "s/oooooo/$x.out/g" $x.ctl
mdl=`grep "$m" model_details|awk '{print $2}'`
FO=`grep "$m" model_details|awk '{print $3}'`
OMG=`grep "$m" model_details|awk '{print $4}'`
sed -i "s/mdl/$mdl/g" $x.ctl
sed -i "s/FO/$FO/g" $x.ctl
sed -i "s/OMG/$OMG/g" $x.ctl
codeml $x.ctl
done
done
done



