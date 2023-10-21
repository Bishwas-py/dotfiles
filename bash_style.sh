YELLOW="\[$(tput setaf 226)\]"
ORANGE="\[$(tput setaf 220)\]"
RED="\[$(tput setaf 214)\]"
BLUE="\[$(tput setaf 33)\]"
GREEN="\[\033[32m\]"
RESET="\[$(tput sgr0)\]"
PURPLE="\[\033[35m\]"
VENV_PROMPT='$(if [ -n "$VIRTUAL_ENV" ]; then echo "(`basename \"$VIRTUAL_ENV\"`) "; fi)'

GIT_PROMPT='$(git rev-parse --is-inside-work-tree &>/dev/null;
              if [ $? -eq 0 ]; then echo "($(git branch 2>/dev/null| grep '\''^*'\'' | colrm 1 2))"; fi)'

PS1="${PURPLE}${VENV_PROMPT}${YELLOW}\u${ORANGE}@${RED}\h ${BLUE}\w ${GREEN}${GIT_PROMPT}${RESET}$ "
