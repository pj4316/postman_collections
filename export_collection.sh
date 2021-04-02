#!/bin/bash
# environment file
envFile=./env/.env.config

# check the number of argument of requirement
if [ ! -f ${envFile} ]; then
  echo "no config file."
  command ./sh/add_config.sh ${envFile}
fi

source ${envFile}

# if exist file, then remove
if [ -f ${output} ]; then
    rm ${output}
    echo "remove existing file. ${output} "
fi

# Export Collection
command ./sh/export_postman_collection.sh ${collectionId} ${apiKey} ${output}

# Github upload
command ./sh/upload_github.sh "modify [${collectionName}] collection"

exit 0
