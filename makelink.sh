mkdir -p slides/
rm -rf slides/*.pdf
for file in logs/slides/*.pdf ; do
	ln -s ../$file slides/${file##*/}
done
mkdir -p handouts/
rm -rf handouts/*.pdf
for file in logs/handouts/*.pdf ; do
	ln -s ../$file handouts/${file##*/}
done