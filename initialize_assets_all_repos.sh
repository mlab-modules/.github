

#
#
#  Skript ma za ucel ve vsech repozitarich, ktere jsou umistene o uroven vyse
#  (lze je stahnout jinym skriptem v tomto repozitari) pridat submodul assets
#  a z nej stahnout inicializacni konfiguraci
#

## TODO #1 vytvorit moznost, nektere repozitare (moduly) preskocit
## TOOD #2 for provadet na zaklade seznamu modulu
## TODO #3 Pokud v repozitari neni kicad soubor, tak tam neimportovat actions

#root=$(pwd)/../
#ROOT=$(realpath ..)
cd ..
root=$(pwd)
echo "ROOT s repozitary:" $root

for i in $(ls -d ./*) ; do
    cd $root;
    cd $i;
    echo "pracovni slozka:" $(pwd);
    mkdir -p doc || true;
    git submodule update --init --remote || true;
    git submodule add git@github.com:MLAB-project/documents.git doc/assets -b master || true;
    cd doc/assets;
    ./copy_workflow_to_repo.sh ;
    cd ../.. ;
    git add doc/assets;
    git add .github;
    git commit -m"automated commit; add github actions";
    git push;

done
