#!/usr/bin/env bash


function repair_pip_rights {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo "Shall I set user rights to current user to /usr/local ?"
        read -p "Are you sure? " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            sudo chown -R $USER /usr/local
        fi
    else
        echo "Fix your access rights please"
    fi
}

function install_pip_review {
    if which pip-review >/dev/null 2>/dev/null; then
        pip3 install pip-review
    fi
}

function install_pip_review_sudo {
    if which pip-review >/dev/null 2>/dev/null; then
        sudo -H pip3 install pip-review
    fi
}

function update {
    pip-review --interactive
}

function update_sudo {
    sudo -H pip-review --interactive
}

function list_outdated {
    pip3 list --outdated --format=freeze --local | grep -v '^\-e'
}

# function pip_update {
#     if [[ $(list_outdated | grep -v "pep517") ]]; then
#         list_outdated | grep -v "pep517" | cut -d = -f 1  | xargs -n1 pip3 -q install -U
#     fi
# }
#
# function pip_update_osx {
#     if [[ $(list_outdated | grep -v "pygobject") ]]; then
#         list_outdated| grep -v "pygobject" | cut -d = -f 1  | xargs -n1 pip3 -q install -U
#     fi
# }

# function pip_update_sudo {
#     sudo -H pip3 install -U $(sudo -H pip3 freeze | grep -v pep517 | cut -d '=' -f 1) | grep -v "Requirement already up-to-date"
# }


if which pip3 >/dev/null 2>/dev/null; then
    echo "🐍 Update pip3"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        install_pip_review_sudo
        if update; then
             echo ""
        else
            repair_pip_rights
            update
        fi

        # if pip_update_osx; then
        #     echo ""
        # else
        #     repair_pip_rights
        #     pip_update_osx
        # fi
    else
        install_pip_review_sudo
        # pip_update_sudo
        update_sudo
    fi
fi
