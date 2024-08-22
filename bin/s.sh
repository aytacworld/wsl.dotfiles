#!/bin/bash

if [[ "$1" == "clone" ]]; then
    repourl=$2
    foldername=$(echo "$repourl" | awk -F '/_git/' '{print $2}')

    pass show open
    git clone "$repourl"
    echo $foldername
    cd "./$foldername"

    exit 0
fi

isGitFolder="$(pwd)/.git"

[[ ! -d $isGitFolder ]] &&  echo "run \"git init\" first" && exit 1

remote="origin"
branch=$(git branch --show-current)
tempFolderName="$HOME/.local/tmp"
foldername="$tempFolderName/$(basename $(pwd))"
previousBranch=$([[ ! -d $tempFolderName ]] \
    && mkdir $tempFolderName; [[ ! -f "$foldername" ]] \
    && touch "$foldername" \
    && echo $branch > "$foldername" || cat "$foldername")

checkout () {
    echo $branch > $foldername
    git checkout $1
    pass show open
    git pull
}

commit () {
    git add .
    git commit -m "$1"
}

push () {
    # this will unlock the pass database
    pass show open
    [ ! -z "$1"  ] && git push -f && exit 0
    git push -u $remote $branch
}

case $1 in
    commit)
        commit "$2"
        ;;
    pull)
        git pull
        ;;
    push)
        [[ ! -z "$2" ]] && commit "$2"
        push
        ;;
    force)
        push force
        ;;
    create)
        git checkout -b $2
        ;;
    back)
        checkout $previousBranch
        ;;
    squash)
        git rebase -i HEAD~$2
        ;;
    diff)
        git diff -w
        ;;
    *)
        [ -z "$1" ] && git status || checkout $1
        ;;
esac
