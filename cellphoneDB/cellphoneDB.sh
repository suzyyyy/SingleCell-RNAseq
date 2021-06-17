#!/bin/bash

#pip install cellphonedb

#We need meta file(cellID,barcode) and count file for cellphoneDB
#it was made by project_Seurat.ipynb

#find cell-cell interaction using cellphoneDB by each group
#let's suppose there are two files(meta,counts) in each group folder
group="moderate severe recover"

for g in $group;do
	cd $g
	cellphonedb method statistical_analysis $g'_meta.txt' $g'_counts.txt'
	cellphonedb plot dot_plot
	cellphonedb plot heatmap_plot $g'_meta.txt'	
done

#After run this code, you'll get an out folder in each group folder
