# check the number of argument of requirement
if [ $# -ne 1 ]; then
    echo "WARNING!!!!! "
    echo "please input usage : get_collections_postman.sh [apiKey]"
    exit 1
fi

apiKey=$1

# Export Collection
curl \
--location \
--request GET "https://api.getpostman.com/collections" \
--header "X-Api-Key: ${apiKey}"

echo ""

exit 0
