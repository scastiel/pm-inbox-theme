#!/bin/bash

PM_THEME="pm-theme/pm-theme.css"
DIST_DIR="dist"
DIST_FILE="$DIST_DIR/pm-inbox-theme.css"

mkdir -p $DIST_DIR
cat src/*.css > $DIST_FILE
tail +`grep -n '/\*\!' $PM_THEME | head -1 | cut -f1 -d':'` $PM_THEME >> $DIST_FILE
