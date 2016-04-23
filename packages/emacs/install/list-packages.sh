#!/bin/zsh
ls -1d $1/*(/)  | tr '-' ' ' | rev | cut -d' ' -f2- | rev | tr ' ' '-'
