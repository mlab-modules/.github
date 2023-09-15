


echo "Vytvorit seznam vsech repozitaru"

repos=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=1 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=2 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=3 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=4 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=5 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=6 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=7 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")


echo " "
echo "Budu stahovat repozitare:"
echo $repos
echo " "

for i in $repos; do
    echo "Repo " $i;
    git clone $i --depth 2 --recurse-submodules;
done
