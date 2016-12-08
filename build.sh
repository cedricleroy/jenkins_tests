#!/bin/bash

if [[ ! "$WORKSPACE" ]]; then
    WORKSPACE="${0%/*}"
fi

PYENV_HOME=$WORKSPACE/venv/

which python

#pip install --quiet -r requirements.txt -t $WORKSPACE

#touch $WORKSPACE/google/__init__.py

virtualenv -p python2.7 --no-site-packages $PYENV_HOME
. $PYENV_HOME/bin/activate

which python

pip install --quiet -r requirements.txt
pip install --quiet pylint
pip install --quiet pytest

pytest --junitxml tests_results.xml
