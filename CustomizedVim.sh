#!/usr/bin/env sh

CHOICES=$(
zenity --list \
    --checklist \
    --height=400 --width=600 \
    --title="~Choose the package you want~" \
    --column "Choose" --column="PlugIn" --column="Description"\
    TRUE NerdTree "File Browser"\
    FALSE Vim-airline "Pretty-status"\
    TRUE Tagbar "class/modeule browser"\
    TRUE Bufexplorer "Fantasy buffer explorer"\
    TRUE NerdCommenter "convenient comment"\
    TRUE LaTeX-Box "Latex Development"\
    FALSE Vimwiki "wiki Note"\
    TRUE SrcExpl "Code insight"\
    FALSE Vim-multiple-cursors "Multiple cursor"\
    FALSE SingleCompile "Compile"\
    FALSE Vim-matlab "Matlab"\
    FALSE Gitgutter "git management")
#About the usage of for separator
#http://stackoverflow.com/questions/918886/how-do-i-split-a-string-on-a-delimiter-in-bash
IFS="|"
for choice in $CHOICES
do
    echo $choice
done
