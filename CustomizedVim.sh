#!/usr/bin/env sh

CHOICE=$(
zenity --list \
    --checklist \
    --height=400 --width=600 \
    --title="~Choose the package you want~" \
    --column "Choose" --column="PlugIn" --column="Description"\
    TRUE NerdTree "File Browser"\
    TRUE TagBar "Class Browser"\
    FALSE Gitgutter "git management")

echo $CHOICE
