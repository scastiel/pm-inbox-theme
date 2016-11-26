#!/bin/bash

PM_THEME="pm-theme/pm-theme.css"
DIST_DIR="dist"

mkdir -p $DIST_DIR
rm $DIST_DIR/*.css

for theme_file in `ls src/themes/*.css`; do
    theme=`basename $theme_file .css`
    dist_file="$DIST_DIR/pm-inbox-$theme-theme.css"
    cat $theme_file src/*.css > $dist_file
    tail +`grep -n '/\*\!' $PM_THEME | head -1 | cut -f1 -d':'` $PM_THEME >> $dist_file
done
