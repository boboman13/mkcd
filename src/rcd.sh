
# This is the recursive cd. It will check if there is more than one dir (or any files) in the dir; if not, cd into it.
function rcd_recur() {
	if [ `` -eq 1 ]; then
		cd `ls`
	else
		echo 'Traversed into `pwd`'
	fi
}

# This is the called function. If it has an argument it will `cd` into there, then recursively cd.
function rcd() {
	if [ $# -eq 1 ]; then
		cd $1 && rcd_recur
	else
		rcd_recur
	fi
}
