mapping=(
"ー@-"
"【@["
"】@]"
"（@("
"）@)"
"「@\""
"…@..."
"」@\""
"！@!"
"。@."
"、@,"
"＋@+"
"・@-"
"？@?"
"：@:"
"＜@<"
"＞@>"
"１@1"
"３@3"
"２@2"
"５@5"
"Ａ@A"
"Ｆ@F"
"Ｐ@P"
"Ｖ@V"
"Ｏ@O"
"Ｋ@K"
"‥@.."
"奴隷陥落@Slave capitulation"
"助手退却@Assistant withdrawal"
"V経験@V exp"
"性交経験@Sex exp"
"(助手)@(Assistant)"
"大量射精@High quantity ejaculation"
"精液経験@Semen exp"
"射精@Ejaculation"
"正常位@Missionary"
"キス@Kiss"
"実行値@Move points:"

)
for i in "${mapping[@]}"
do
	targ=$(echo $i | cut -d'@' -f1)
	ch=$(echo $i | cut -d'@' -f2)
	echo "Replace $targ with $ch"
	# List of files containing targets
	for f in $(ag -G ERB -l $targ)
	do
		# Find all lines that start with PRINT that may be preceeded by any combination of tabs and spaces and contain the char we wanna change
		# Within those lines find those that do not contain target characters between %, since that can be danger danger
		# Also make sure that the lines we want to change are not empty PRINTs
		# and return it in form line_number:line, maybe --numbers required, I don't
		# cut returned string by :, get first field (line number)
		for num in $(ag "^[\t ]*PRINT.*$targ" --nomultiline $f | ag -v "%.*$targ.*%" | ag -v "PRINT.*?\b[\t ]*$" | cut -d':' -f1)
		do
			# Replace all occurences of $targ with $ch on given line $num in file $f
			echo $f:$num
			sed -i "$num""s/$targ/$ch/g" $f
		done
	done
done
