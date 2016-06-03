for i in */
do
	cd "$i"
	git remote rm origin
	git remote rm upstream
	git remote add origin git@github.com:fusion809/$i.git
	git remote add upstream git@github.com:fusion809/$i.git
	cd -
done
