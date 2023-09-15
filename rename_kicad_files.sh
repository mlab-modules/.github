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
    git stash; git pull; git submodule sync; git submodule update --init --remote

    cd doc/assets/workflows || true;
    ./copy_workflow_to_repo.sh || true ;

    cd $root;
    cd $i;
    
    #gh repo edit --add-topic mlab mlab-module

    #if [ "$(find ../../../hw -name '*kicad_pro'  2>/dev/null)" ]
    #then
    #	echo "This is KICAD project"
    #	gh repo edit --add-topic kicad kicad-pcb pcb mlab-kicad kicad-project
    #
    #fi

    find . \( -name '*.kicad_pcb' -o -name '*.kicad_pro' -o -name '*.kicad_sch' \) -exec bash -c 'A={}; echo "${A} -> ${A/A.kicad/.kicad}"; mv ${A} ${A/A.kicad/.kicad}' \;

    echo "---"
    git add hw doc .github;
    git commit -m"automated commit; rename source files to new naming convence" ;
    git push;

done
