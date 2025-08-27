# Repalce the chr names labels for synteny
for i in `cat labels.list`; do  j=`echo $i|sed 's/@/\t/g'|cut -f1`; k=`echo $i|sed 's/@/\t/g'|cut -f2` ; sed -i "s/$j/$k/g" Chr.file; done
for i in `cat labels.list`; do  j=`echo $i|sed 's/@/\t/g'|cut -f1`; k=`echo $i|sed 's/@/\t/g'|cut -f2` ; sed -i "s/$j/$k/g" Final_collinearity_block; done
for i in `cat labels.list`; do  j=`echo $i|sed 's/@/\t/g'|cut -f1`; k=`echo $i|sed 's/@/\t/g'|cut -f2` ; sed -i "s/$j/$k/g" Final_gff_file; done

