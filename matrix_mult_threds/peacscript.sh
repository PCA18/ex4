#!/usr/bin/env bash
#SBATCH --partition=bench
#SBATCH --nodes 1
srun ./double 1 100 100 1 
echo ./double100m1t.txt
srun ./double 1 100 100 2 
echo ./double100m2t.txt
srun ./double 1 100 100 4 
echo ./double100m4t.txt
srun ./double 1 100 100 8 
echo ./double100m8t.txt
srun ./double 1 100 100 16 
echo ./double100m16t.txt
srun ./double 1 100 100 32 
echo ./double100m32t.txt
srun ./double 1 500 500 1 
echo ./double500m1t.txt
srun ./double 1 500 500 2 
echo ./double500m2t.txt
srun ./double 1 500 500 4 
echo ./double500m4t.txt
srun ./double 1 500 500 8 
echo ./double500m8t.txt
srun ./double  1 500 500 16 
echo ./double500m16t.txt
srun ./double 1 500 500 32 
echo ./double500m32t.txt
srun ./double 1 1000 1000 1 
echo ./double1000m1t.txt
srun ./double 1 1000 1000 2 
echo ./double1000m2t.txt
srun ./double 1 1000 1000 4 
echo ./double1000m4t.txt
srun ./double 1 1000 1000 8 
echo ./double1000m8t.txt
srun ./double 1 1000 1000 16
echo ./ double1000m16t.txt
srun ./double 1 1000 1000 32
echo ./ double1000m32t.txt
srun ./double 1 10000 10000 1 
echo ./double10000m1t.txt
srun ./double 1 10000 10000 2 
echo ./double10000m2t.txt
srun ./double 1 10000 10000 4 
echo ./double10000m4t.txt
srun ./double 1 10000 10000 8 
echo ./double10000m8t.txt
srun ./double 1 10000 10000 16
echo ./double10000m16t.txt
srun ./double 1 10000 10000 32
echo ./double10000m32t.txt
srun doubleO3 1 100 100 1 
echo doubleO3100m1t.txt
srun doubleO3 1 100 100 2 
echo doubleO3100m2t.txt
srun doubleO3 1 100 100 4 
echo doubleO3100m4t.txt
srun doubleO3 1 100 100 8 
echo doubleO3100m8t.txt
srun doubleO3 1 100 100 16 
echo doubleO3100m16t.txt
srun doubleO3 1 100 100 32 
echo doubleO3100m32t.txt
srun doubleO3 1 500 500 1 
echo doubleO3500m1t.txt
srun doubleO3 1 500 500 2 
echo doubleO3500m2t.txt
srun doubleO3 1 500 500 4 
echo doubleO3500m4t.txt
srun doubleO3 1 500 500 8 
echo doubleO3500m8t.txt
srun doubleO3 1 500 500 16 
echo doubleO3500m16t.txt
srun doubleO3 1 500 500 32 
echo doubleO3500m32t.txt
srun doubleO3 1 1000 1000 1 
echo doubleO31000m1t.txt
srun doubleO3 1 1000 1000 2 
echo doubleO31000m2t.txt
srun doubleO3 1 1000 1000 4 
echo doubleO31000m4t.txt
srun doubleO3 1 1000 1000 8 
echo doubleO31000m8t.txt
srun doubleO3 1 1000 1000 16 
echo doubleO31000m16t.txt
srun doubleO3 1 1000 1000 32 
echo doubleO31000m32t.txt
srun doubleO3 1 10000 10000 1 
echo doubleO310000m1t.txt
srun doubleO3 1 10000 10000 2 
echo doubleO310000m2t.txt
srun doubleO3 1 10000 10000 4 
echo doubleO310000m4t.txt
srun doubleO3 1 10000 10000 8 
echo doubleO310000m8t.txt
srun doubleO3 1 10000 10000 16
echo doubleO310000m16t.txt
srun doubleO3 1 10000 10000 32
echo doubleO310000m32t.txt
srun float 1 100 100 1 
echo float100m1t.txt
srun float 1 100 100 2 
echo float100m2t.txt
srun float 1 100 100 4 
echo float100m4t.txt
srun float 1 100 100 8 
echo float100m8t.txt
srun float 1 100 100 16
echo float100m16t.txt
srun float 1 100 100 32
echo float100m32t.txt
srun float 1 500 500 1 
echo float500m1t.txt
srun float 1 500 500 2 
echo float500m2t.txt
srun float 1 500 500 4 
echo float500m4t.txt
srun float 1 500 500 8 
echo float500m8t.txt
srun float 1 500 500 16
echo float500m16t.txt
srun float 1 500 500 32
echo float500m32t.txt
srun float 1 1000 1000 1
echo float1000m1t.txt
srun float 1 1000 1000 2
echo float1000m2t.txt
srun float 1 1000 1000 4
echo float1000m4t.txt
srun float 1 1000 1000 8
echo float1000m8t.txt
srun float 1 1000 1000 16 
echo float1000m16t.txt
srun float 1 1000 1000 32 
echo float1000m32t.txt
srun float 1 10000 10000 1 
echo float10000m1t.txt
srun float 1 10000 10000 2
echo float10000m2t.txt
srun float 1 10000 10000 4 
echo float10000m4t.txt
srun float 1 10000 10000 8 
echo float10000m8t.txt
srun float 1 10000 10000 16 
echo float10000m16t.txt
srun float 1 10000 10000 32 
echo float10000m32t.txt
srun floatO3 1 100 100 1 
echo floatO3100m1t.txt
srun floatO3 1 100 100 2 
echo floatO3100m2t.txt
srun floatO3 1 100 100 4 
echo floatO3100m4t.txt
srun floatO3 1 100 100 8 
echo floatO3100m8t.txt
srun floatO3 1 100 100 16
echo floatO3100m16t.txt
srun floatO3 1 100 100 32
echo  floatO3100m32t.txt
srun floatO3 1 500 500 1 
echo floatO3500m1t.txt
srun floatO3 1 500 500 2 
echo floatO3500m2t.txt
srun floatO3 1 500 500 4 
echo floatO3500m4t.txt
srun floatO3 1 500 500 8 
echo floatO3500m8t.txt
srun floatO3 1 500 500 16
echo  floatO3500m16t.txt
srun floatO3 1 500 500 32
echo  floatO3500m32t.txt
srun floatO3 1 1000 1000 1 
echo floatO31000m1t.txt
srun floatO3 1 1000 1000 2 
echo floatO31000m2t.txt
srun floatO3 1 1000 1000 4 
echo floatO31000m4t.txt
srun floatO3 1 1000 1000 8 
echo floatO31000m8t.txt
srun floatO3 1 1000 1000 16
echo floatO31000m16t.txt
srun floatO3 1 1000 1000 32
echo floatO31000m32t.txt
srun floatO3 1 10000 10000 1 
echo floatO310000m1t.txt
srun floatO3 1 10000 10000 2 
echo floatO310000m2t.txt
srun floatO3 1 10000 10000 4 
echo floatO310000m4t.txt
srun floatO3 1 10000 10000 8 
echo floatO310000m8t.txt
srun floatO3 1 10000 10000 16
echo floatO310000m16t.txt
srun floatO3 1 10000 10000 32
echo floatO310000m32t.txt
