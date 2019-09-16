#!/bin/sh

SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
"$SCRIPTPATH/pink" -importPath github.com/najamsk/revelplay/pink -srcPath "$SCRIPTPATH/src" -runMode dev
