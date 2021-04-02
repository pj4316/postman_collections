
# check the number of argument of requirement
if [ $# -eq 1 ]; then
    echo $commitMessage
else
    echo "empty commit Message"
    commitMessage="empty commit"
fi

commitMessage=$1

# Github upload
echo `git add .`
echo `git commit -m "${commitMessage}"`
echo `git push`
