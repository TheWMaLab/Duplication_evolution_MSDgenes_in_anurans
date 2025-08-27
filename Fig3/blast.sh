#  For each syntenic gene, identify the region with the highest alignment score and determine its genomic location using the corresponding gene sequence from the reported species available in NCBI.

# Build BLAST database from the genome
makeblastdb -in genome.fa -dbtype nucl -out genome_db

# Define the query file containing gene sequences
q="query_of_genes"

# Run BLAST to search the query genes against the genome database
blastn -task blastn \
       -evalue 0.1 \
       -db $i \
       -out blastn_"$i"_"$q".out \
       -num_threads 2 \
       -outfmt 1 \
       -query $q
