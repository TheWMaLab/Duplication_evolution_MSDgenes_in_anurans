#Genome_blast
makeblastdb -in genome.fa -dbtype nucl -out genome_db
q="query"
blastn -task blastn -evalue 0.1 -db $i -out blastn_"$i"_"$q".out -num_threads 2 -outfmt 1 -query $q


## for database creaton and doing blastn
##Download Raw read genome data for Duplicated Species
zcat *.gz|sed -n '1~4s/^@/>/p;2~4p' > file.fa
i="file.fa"
makeblastdb -in $i -out $i -dbtype nucl
#query sequence
q="query"
blastn -task blastn -evalue 0.1 -db $i -out blastn_"$i"_"$q".out -num_threads 2 -outfmt 1 -query $q
