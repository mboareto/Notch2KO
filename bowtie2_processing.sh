for l in `ls $1`;
do
	for f in `ls $1$l/*.fastq | sed 's/.fastq//g'`; 
	do
		echo ""
		echo "Processing cell: $f.fastq"
		~/bin/bowtie2-2.2.9/bowtie2 -x ~/bin/mm10/mm10 -U $f.fastq -S $f.sam
	done
done
