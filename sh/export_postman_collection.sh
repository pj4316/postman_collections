# check the number of argument of requirement
if [ $# -ne 3 ]; then
    echo "WARNING!!!!! "
    echo "please input usage : export_postman_collection.sh [collectionId] [apiKey] [output]"
    exit 1
fi

collectionId=$1
apiKey=$2
output=$3

# Export Collection
curl \
--location \
--request GET "https://api.getpostman.com/collections/${collectionId}" \
--header "X-Api-Key: ${apiKey}" >> ${output}

if [ -f ${output} ]; then
	echo "success to export collection. ${output} "
else 
	echo "fail to export collection. ${output}"
fi

exit 0
