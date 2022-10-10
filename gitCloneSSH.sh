# Clone Git repos with SSH and custom username/email

remote=$1

username="$(git config --get user.name)"
email="$(git config --get user.email)"

cmd="git clone ${remote:0:4}${username}.${remote:4}"
eval $cmd

git=$(echo $remote| cut -d'/' -f 2)
dir=${git:0:$((${#git} - 3 - 1))}

cdto="cd ${dir}"

eval $cdto

setUsername="git config user.name \"${username}\""
setEmail="git config user.email \"${email}\""

eval $setUsername
eval $setEmail

eval "cd .."
