#
#
#  Skript ma za ucel ve vsech repozitarich, ktere jsou o uroven vyse 
# zaktualizovat submodul, nainstalovat actions, pridat do repozitaru 
# github toppics, prejmenovat Kicad zdrojaky dle novych konvenci, 
# A to vse commitnout

#root=$(pwd)/../
#ROOT=$(realpath ..)
cd ..
root=$(pwd)
echo "ROOT s repozitary:" $root

for i in $(ls -dr ./*) ; do
    echo " "
    echo "-----------------"
    cd $root;
    cd $i;
    echo "pracovni slozka:" $(pwd);


    gh repo edit --homepage https://www.mlab.cz/module/${i:2}/

done
