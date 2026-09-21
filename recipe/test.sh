#!/bin/bash

# Confirm if idsinfo command is available
idsinfo --help

# Confirm required environment variables are set
echo "IMAS_VERSION: ${IMAS_VERSION}"

# Confirm if the environment variables are set correctly
if [[ "${IMAS_VERSION}" == "${PKG_VERSION}" ]]; then
    echo "IMAS_VERSION is set correctly"
else
    echo "IMAS_VERSION is not set correctly"
    exit 1
fi
if [[ -f "$(idsinfo idspath)" ]]; then
    echo "idsinfo idspath points to an existing Data Dictionary file"
else
    echo "idsinfo idspath does not point to an existing file"
    exit 1
fi
