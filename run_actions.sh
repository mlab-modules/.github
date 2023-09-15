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


#gh workflow run "Metadata updater" &
gh workflow run "Update actions and assets repository" &

#    gh repo edit --add-topic mlab --add-topic mlab-module
#
#    if [ "$(find hw -name '*kicad_pro'  2>/dev/null)" ]
#    then
#	echo "This is KICAD project"
#	gh repo edit --add-topic kicad --add-topic kicad-pcb --add-topic pcb --add-topic mlab-kicad --add-topic kicad-project
# 
#    fi
done
