# Easily accessing the bashrc from anywhere you want
alias hnanobashrc='nano ~/.bashrc'
alias hsourcebashrc='source ~/.bashrc'
alias hcatbashrc='cat ~/.bashrc'

# Git related
alias gs='git status'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gm='git commit -m '
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='git push'
alias ghome='cd `git rev-parse --show-toplevel`'

# Python related
function cvenv() {
    # This function creates a python3.11 venv, updates pip and activates the venv.
    # The python version can be passed as an addional argument.

    python_version="3.11"
    if [ "$#" -ne 1 ]; then
        echo "Using default python version of $python_version"
    else
        python_version="$1"
        if [[ "${python_version:1:1}" != "." ]]; then
            echo "Please provide a version number of python with format major.minor, e.g. 3.11."
            return -1
        fi
    fi
    cmd="python$python_version -m venv venv && source venv/bin/activate && pip install -U pip"
    eval "$cmd"
}

function dvenv() {
    # This function removes the venv folder in the current directory.
    # When argument -y is given the folder will be directly removed.
    if [ "$#" -ne 1 ]; then
        printf 'Do you really want to remove the venv with "rm -rf venv"? (y/n)\n'
        read answer
        if [ "$answer" != "${answer#[Yy]}" ]; then
            rm -rf venv
        fi
    elif [ "$1" == "-y" ]; then
        rm -rf venv
    fi
    deactivate
}

alias avenv='source venv/bin/activate'
alias hpipdev='pip install -e .[dev]'
alias hpipe='pip install -e .'
alias htouchinitpy='touch __init__.py'
alias hpytest='pytest --disable-warnings'
alias hpsuser='ps -u -a '
alias hduone='du -h --max-depth=1 | sort -h'
alias hcount='find . -type f | wc -l'
alias hcp='rsync -ah --info=progress2'

