#!/bin/bash
#SBATCH --job-name=paml
#SBATCH --time=10:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --output=slurm_ind.%out
#SBATCH --output=slurm_ind.%err

module load R-bundle-Bioconductor/3.15-foss-2022a-R-4.2.1
module load PAML/4.9j-GCCcore-11.3.0

codeml demo.ctl


#extract free ratio dn ds omega

for i in `cat list_species`
do
grep -A1 "dS tree:"  outfree |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>dstrr
done
for i in `cat list_species`
do
grep -A1 "dN tree:"  outfree |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>dntree
done
for i in `cat list_species`
do
grep -A1 "w ratios as labels for TreeView:"  outfree |sed 's/(//g' |sed 's/)/\n/g' |sed 's/,/\n/g'  |grep "$i" >>omega
done
sed 's/ //g' dstrr
sed -i 's/ //g' dstrr
sed -i 's/:/\t/g' dstrr
sed -i 's/ //g' dntree
sed -i 's/:/\t/g' dntree
sed -i 's/ //g' omega
sed -i 's/#/\t/g' omega
paste  omega dntree  dstrr |cut -f1,2,4,6 |awk '{print $1"\t"$2"\t"$3"\t"$4}' >tab_sep_mega_file

