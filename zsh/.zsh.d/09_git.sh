gitignore () {
  git rm -r --cached .
  git add .
  git commit -m ".gitignore fix"
}

add () {
  git add .
}

commit () {
  git commit -m $1
}

push () {
    git push
}

pushf () {
    git push --force
}

gitprune () {
    git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}

