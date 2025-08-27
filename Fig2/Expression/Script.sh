fasta=1
gtf=2

# for star indexing
STAR --runThreadN 16 --runMode genomeGenerate --genomeDir . --genomeFastaFiles $fasta --sjdbGTFfile $gtf

##Star mapping
for i in *_1.fastq
do
j=`echo $i|sed 's/_1/_2/g'`
k=`echo $i|sed 's/_1.fastq//g'`
STAR --runThreadN 16 --outSAMtype BAM SortedByCoordinate --genomeDir . sjdbGTFfile $gtf --readFilesIn $i $j --outSAMstrandField intronMotif --outFileNamePrefix $k
done

###htseq read count
for i in *bam
do
htseq-count -f bam -r name -s no -t exon -i gene_id $i genes.gtf > "$i"_counts.txt
done


###cufflins
for i in *bam
do
cufflinks -p 8 -g genes.gtf $i -o "$i"_cufflinks_output
done
