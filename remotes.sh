for i in */
do
	cd "$i"
	git remote rm origin
	git remote rm upstream
	CWD=${PWD##*/}
	GWD="${CWD#.}"
	git remote add origin git@github.com:fusion809/$GWD.git
	git remote add upstream git@github.com:fusion809/$GWD.git
	cd -
done
