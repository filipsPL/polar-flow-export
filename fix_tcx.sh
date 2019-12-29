#!/bin/bash

# fixing XML structure
# please read this thread:
# https://forums.garmin.com/apps-software/mobile-apps-web/f/garmin-connect-web/83432/polar-flow-tcx-export-to-garmin-connect

# before make sure to install xmlstarlet:
# sudo apt install xmlstarlet

indir="tcx"
outdir="tcx-fixed"
mkdir -p "$outdir"

for f in $indir/*.tcx
do
  base=$(basename $f)
  echo $base
  cat $indir/$base | xmlstarlet format | sed -e '/<Creator/,/<\/Creator>/d' -e '/<Author/,/<\/Author>/d' > $outdir/$base
done
