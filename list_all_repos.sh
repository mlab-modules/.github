


echo "Vytvorit seznam vsech repozitaru"

repos=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=1 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=2 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=3 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=4 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=5 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=6 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=7 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=8 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=9 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=10 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=11 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=12 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=13 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
sleep 2
repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=14 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=15 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=16 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=17 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=18 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=19 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")
#sleep 2
#repos=$repos$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/orgs/mlab-modules/repos?page=20 | jq '. | map(.ssh_url) | @sh'  | tr -d '"' | tr -d "\'")



echo $repos | wc -l

echo " "
echo "Budu stahovat repozitare:"
echo $repos
echo " "

for i in $repos; do
    echo $i;
done
