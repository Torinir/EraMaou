#!/bin/bash

OUTFILE="status.txt"
echo "" > $OUTFILE
shopt -s globstar
for i in ERB/**/*.ERB
do
	total=$(ag -c "^[\t ]*PRINT" $i)
	if [ -z $total ];
	then
		total=0
		left=0
		rate=0
	else
		left=$(ag "^[\t ]*PRINT" $i | ag '[^\x00-\x7F]' | wc -l)
		rate=$(bc <<< "scale=0; $left*100/$total")
	fi
	echo "$i $left $total $rate" >> $OUTFILE
done
sort -k4,4 -V $OUTFILE > "$OUTFILE"2
mv "$OUTFILE"2 $OUTFILE
