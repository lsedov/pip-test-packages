#!/bin/bash

HERE=`pwd` 

LIB_DIR=$HERE/
PY_INT=${PY_INT:-}

if [ "${PY_INT}" ] 
then
	PY_INT="-p ${PY_INT}"
fi

if [ "${VIRTUALENV_PATH}" ]
then
	echo "Activating environment $VIRTUALENV_PATH..."
	source $VIRTUALENV_PATH
else
	if [ ! -d ".env" ]
	then
		echo
		echo "Creating environment..."
		virtualenv .env ${PY_INT}
	fi
	echo "Activating environment..."
	source .env/bin/activate
fi

echo "Installing requirements..."
pip install -q -r $HERE/requirements.txt

export PYTHONPATH=$PYTHONPATH:$LIB_DIR

echo "Done"
