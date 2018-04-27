DIR0A="/scratch/ruge/proj/MLL-AF9_Frank"
DIR0B="/proj/MLL-AF9_Frank"

DIR_1="doris_star"

DIR_A="00_extract"
DIR_B="01_preprocessing"
DIR_C="02_mapping"
DIR_D="03_DeSeq2"
DIR_E="04_edgeR"

#####################################
#Set up directory system
#####################################

mkdir -p $DIR0A/$DIR_1
mkdir -p $DIR0A/$DIR_1/data
mkdir -p $DIR0A/$DIR_1/$DIR_A
mkdir -p $DIR0A/$DIR_1/$DIR_B
mkdir -p $DIR0A/$DIR_1/$DIR_C
mkdir -p $DIR0A/$DIR_1/$DIR_D
mkdir -p $DIR0A/$DIR_1/$DIR_E
mkdir -p $DIR0A/$DIR_1/$DIR_A/results
mkdir -p $DIR0A/$DIR_1/$DIR_B/results
mkdir -p $DIR0A/$DIR_1/$DIR_C/results
mkdir -p $DIR0A/$DIR_1/$DIR_D/results
mkdir -p $DIR0A/$DIR_1/$DIR_E/results

mkdir -p $DIR0B/$DIR_1
mkdir -p $DIR0B/$DIR_1/$DIR_A
mkdir -p $DIR0B/$DIR_1/$DIR_B
mkdir -p $DIR0B/$DIR_1/$DIR_C
mkdir -p $DIR0B/$DIR_1/$DIR_D
mkdir -p $DIR0B/$DIR_1/$DIR_E

#####################################
#softlink to results
#No unnecessary backup of large files
#####################################
ln -s $DIR0A/$DIR_1/data $DIR0B/$DIR_1/data
ln -s $DIR0A/$DIR_1/$DIR_A/results $DIR0B/$DIR_1/$DIR_A/results
ln -s $DIR0A/$DIR_1/$DIR_B/results $DIR0B/$DIR_1/$DIR_B/results
ln -s $DIR0A/$DIR_1/$DIR_C/results $DIR0B/$DIR_1/$DIR_C/results
ln -s $DIR0A/$DIR_1/$DIR_D/results $DIR0B/$DIR_1/$DIR_D/results
ln -s $DIR0A/$DIR_1/$DIR_E/results $DIR0B/$DIR_1/$DIR_E/results

#####################################
#copy shell scripts to DIR_A - DIR_E
#No
#####################################
cp $DIR0B/betti_star/data/*.sh $DIR0B/$DIR_1/data/
cp $DIR0B/betti_star/00*/*.sh $DIR0B/$DIR_1/$DIR_A/
cp $DIR0B/betti_star/01*/*.sh $DIR0B/$DIR_1/$DIR_B/
cp $DIR0B/betti_star/02*/*.sh $DIR0B/$DIR_1/$DIR_C/
#cp $DIR0B/01_star/07*/*.sh $DIR0B/$DIR_1/$DIR_D/
cp $DIR0B/betti_star/03*/*.R $DIR0B/$DIR_1/$DIR_D/
cp $DIR0B/betti_star/03*/*.sh $DIR0B/$DIR_1/$DIR_D/

#cp $DIR0B/new_analysis/07*/*.sh $DIR0B/$DIR_1/$DIR_E/
#cp $DIR0B/new_analysis/07*/*.R $DIR0B/$DIR_1/$DIR_E/


#cp $DIR0B/"var3Deseq_analysis"/$DIR_E/*.sh $DIR0B/$DIR_1/$DIR_E/

