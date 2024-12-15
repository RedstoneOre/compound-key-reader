#! /bin/bash
read -e -i 'Compound Key Reader 1.20.6-(65) Alpha1.1 '"$(date +%F)"'.zip' -p 'Version Name: ' VERSION
find * | zip -@ '../'"$VERSION"
