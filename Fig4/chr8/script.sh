#  Label the syntenic genes of the candidate sex-determining gene are highlighted in red, and the remaining genes are shown in grey.
cat *gene |sed 's/ /\t/g' |awk '{print $1}' >all_synteny_gene
for i in `cat all_synteny_gene` ;do grep -w "$i" final_merged_links_file  >> file_gene ;done
cat file_gene |sed 's/ /\t/g' |awk '{print $1}' >first_row
cat file_gene |sed 's/ /\t/g' |awk '{print $2}' >second_row
cat first_row second_row |awk 'BEGIN{OFS=FS="\t"} {$2="255,0,0"; print}' >red_col_gene
cp final_merged_links_file temp_file.txt
for i in `cat all_synteny_gene`
do
grep -v -w "$i" temp_file.txt > temp_filtered.txt
mv temp_filtered.txt temp_file.txt
done
cat temp_file.txt |sed 's/ /\t/g' |awk '{print $1}' >first_row_file 
cat temp_file.txt |sed 's/ /\t/g' |awk '{print $1}'  >second_row_file
cat first_row_file second_row_file |awk 'BEGIN{OFS=FS="\t"} {$2="200,200,200"; print}' >light_col_gene
cat red_col_gene light_col_gene >final_colour_file
