# 
#  AutoCommit multiple repos
#


# add the paths to the repositories
declare -a arr=( "$HOME/.local/src/cfiles" )


for i in "${arr[@]}"
do
	cd "$i" ;
	git status | grep -q "deleted\|modified\|untracked files present"  ; 
	if [ $? -eq 0 ] # if it found the words
	then
		st -T "floating" -g "=150x50+250+100" -e sh -c "lazygit "
	fi
done

