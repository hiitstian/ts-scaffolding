if [ "$1" == "" ]
then
    echo "Please provide a commit message."
    exit 1 
else
    curr_branch=$(git rev-parse --abbrev-ref HEAD)
    git add . && git commit -m "$1" && git push github $curr_branch
fi