#!/bin/zsh

if [ $# -ne 2 ] || [ -z $1 ] || [ -z $2 ]; then
  echo "ERROR: Invalid arguments."
  exit 1
fi

GIT_CONFIG_LOCAL=~/.gitconfig.local
if [ ! -e $GIT_CONFIG_LOCAL ]; then
  # echo -n ".gitconfig user.name?> "
  # read GIT_AUTHOR_NAME
  #
  # echo -n ".gitconfig user.email?> "
  # read GIT_AUTHOR_EMAIL
  GIT_AUTHOR_NAME=$1
  GIT_AUTHOR_EMAIL=$2

  cat << EOF > $GIT_CONFIG_LOCAL
[user]
		name = $GIT_AUTHOR_NAME
		email = $GIT_AUTHOR_EMAIL
EOF
fi
