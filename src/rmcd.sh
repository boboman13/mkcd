
# This removes the current directory, since rm -rf . does not work.
function rmcd () {
	DIR=`pwd`
	cd .. && rm -rf $DIR
}
