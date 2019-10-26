#!/bin/bash

SANDBOX_NAME=${1}


function print_usage {
    echo "new_sandbox: create a new nasm sandbox, with makefile and new sandbox.asm"
    echo "             in a new folder."
    echo ""
    echo "USAGE::"
    echo "    new_sandbox <folder>"
}

if [ -z "${SANDBOX_NAME}+x" ]
then
    print_usage
    exit -1
fi

if [ -d "${SANDBOX_NAME}" ]
then
    echo "ERROR: Sandbox folder " ${SANDBOX_NAME} " already exists."
    echo
    print_usage
    exit -1
fi

mkdir -p ${SANDBOX_NAME}
cp sandbox/newsandbox.asm ${SANDBOX_NAME}/${SANDBOX_NAME}.asm
cp sandbox/Makefile ${SANDBOX_NAME}/
sed -i "s/sandbox/${SANDBOX_NAME}/g" ${SANDBOX_NAME}/Makefile
cp sandbox/.gitignore ${SANDBOX_NAME}/
sed -i "s/sandbox/${SANDBOX_NAME}/g" ${SANDBOX_NAME}/.gitignore

exit 0
