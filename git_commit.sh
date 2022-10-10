# Helps to git_add -> commit -> push in a particular repository.
git add .

echo -n 'Enter the commit message  -->  '
read  commitMessage

git commit -m "$commitMessage"

echo 'Enter Branch Name  -->  '
read branch
git push origin "$branch"
