for l in `ls $1`;
do
	for f in `ls $1$l/*.fastq | sed 's/.fastq//g'`; 
	do
		echo ""
		echo "Counting expression: $f.sam"
		htseq-count --stranded=no --format=sam -a 0 --mode=intersection-nonempty -i gene_name $f.sam ~/bin/gencode.vM10.annotation.gtf > $f.count
		cp $f.count ~/Dropbox/ETHZ/RunRui/$f.count
	done
done
