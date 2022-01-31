#!/bin/bash

person=$(curl -s https://api.justyy.workers.dev/api/rig)
mod_person=$(echo $person | sed 's/"//g')
fname=$(echo $mod_person sed 's/\n/\/g'| cut -d '\' -f 1 | sed 's/ /_/g')
pdir=$( echo $0 | sed 's/rperson.sh//g')
mkdir "$pdir"people/$fname
echo -ne $mod_person > "$pdir"people/$fname/info
wget -q -nd -O "$pdir"people/"$fname"/"$fname".jpeg -A jpeg https://thispersondoesnotexist.com/image 
