#!/bin/bash
minimize () {
	printf "Compressing $1...	"
	../shell/jj -u -i $1 -o $1
	echo "done."
}
mkdir artifact
minimize sound/sounds.json
rm -rf artifact
exit
