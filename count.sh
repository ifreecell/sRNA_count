#! /bin/bash
echo "Run time `date`"
for file in `ls *.sorted.bam`
	do 
		echo `basename $file`
		cat $1 | while read lines
           	do
			samtools view $file $lines | wc -l
            	done
       	done
