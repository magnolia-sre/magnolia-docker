#!/bin/bash
grep -v '^#' $1 | while IFS=, read -r Col1 Col2 Col3 Col4 Col5 Col6
do
	$2 `echo $Col1` `echo $Col2` `echo $Col3` `echo $Col4` `echo $Col5` `echo $Col6`
done
