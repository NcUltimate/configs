TMPDIR=/tmp/myconfigs
FILE="$HOME/$1"

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone git@github.com:NcUltimate/configs.git $TMPDIR

# 2. Remove file ($FILE) from .includes
echo
echo "-- Removing file "$FILE" from $TMPDIR/{rc, .includes} --"
cat $TMPDIR/.includes | sed /$1/d > $TMPDIR/.includes.tmp
mv $TMPDIR/.includes.tmp $TMPDIR/.includes
rm $TMPDIR/rc/$1

# 3. Go to $TMPDIR to commit changed files
echo
echo "-- CD to $TMPDIR to commit changes --"
cd $TMPDIR
git add . -A
git commit -m "rmrc $1"
git push origin master

# 4. Remove $TMPDIR
echo
echo "-- Cleanup - Removing $TMPDIR --"
cd ~
sudo rm -rf $TMPDIR

echo
echo "Done!"
