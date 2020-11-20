#!/bin/bash

set -e

op="$1"
sub="$2"
PROFILES_DIR="$HOME/.aws_cred_man"
AWS_CREDS="$HOME/.aws/credentials"

function main() {
    validate_usage

    initialize

    # list command
    if [[ $op == "list" ]]; then 
        cur=$(readlink ~/.aws/credentials | xargs basename)
        ls -1 $PROFILES_DIR | xargs -I {} -n1 bash -c "if [ \"${cur}\" == {} ]; then echo \"* {}\" ;  else echo \"  {}\" ; fi"
    fi

    # cat
    if [[ $op == "cat" ]]; then 
        if [ -z $sub]; then
            cat $AWS_CREDS
        else
            cat "$PROFILES_DIR/$sub"
        fi
        
    fi

    # current command
    if [[ $op == "current" ]]; then 
        readlink ~/.aws/credentials | xargs basename
    fi

    # use command
    if [[ $op == "use" ]]; then 
        if [ -z "$sub" ]; then 
            echo "profile name required $op <profile>" && exit 1
        fi
        profile="$PROFILES_DIR/$sub"
        rm $AWS_CREDS
        ln -s $profile $AWS_CREDS
    fi

    # edit or create command
    if [[ $op == "edit" || $op == "create" ]]; then 
        if [ -z "$sub" ]; then 
            echo "profile name required $op <profile>" && exit 1
        fi
        
        # create profile
        profile=$PROFILES_DIR/$sub
        if [ ! -f "$profile" ]; then
            touch $profile
        fi
        vi $profile
    fi
}

function usage() {
    width=20
    echo
    echo "Credentials Manager for AWS (v1.0.0)"
    echo
    echo "Usage"
    printf '  create <profile>\t%s\n' 'create/edit <profile>' | expand -t $width
    printf '  current\t%s\n' 'show the current profile' | expand -t $width
    printf '  edit <profile>\t%s\n' 'create/edit <profile>' | expand -t $width
    printf '  list\t%s\n' 'list profiles' | expand -t $width
    printf '  use <profile>\t%s\n' 'switch to <profile>' | expand -t $width
    echo
}

function validate_usage() {
    valid_ops="cat create current edit list use"
    if [[ ! " ${valid_ops[@]} " =~ " ${op} " ]]; then
        usage
        exit 1
    fi
}

function initialize() {
    # create config dir
    if [ ! -d "$PROFILES_DIR" ]; then
        mkdir -p PROFILES_DIR
    fi

    # setup
    # if aws creds does not exist or is not a symbolic link, we have work to do
    if [ ! -L "$AWS_CREDS" ]; then
        # if it exists move it and set it as the default profile
        if [ -f "$AWS_CREDS" ]; then
            default="$PROFILES_DIR/default"
            mv $AWS_CREDS $default
            ln -s $default $AWS_CREDS
            echo "Your're all set up and good to go!"
            echo "Here's what changed"
            echo "=> moved $AWS_CREDS to $default"
            echo "=> symlinked $AWS_CREDS to $default"
        fi
    fi
}

main "$@"; exit