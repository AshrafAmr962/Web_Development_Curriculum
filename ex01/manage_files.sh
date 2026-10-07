#!/bin/bash

touch draft.txt
echo "First line using echo (>)." > draft.txt
echo "Second line using echo (>>)." >> draft.txt
cat draft.txt
cp draft.txt draft_backup.txt
mv draft_backup.txt final_report.txt
touch temp
rm temp
