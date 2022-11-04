TMPDIR=/tmp/myconfigs
FILE="$HOME/$1"

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone git@github.com:NcUltimate/configs.git $TMPDIR

# 2. Append file ($FILE) to .includes
echo
echo "-- Copying file "$FILE" & appending to $TMPDIR/.includes --"
echo $1 >> $TMPDIR/.includes
cp $FILE $TMPDIR/rc/

# 3. Go to $TMPDIR to commit changed files
echo
echo "-- CD to $TMPDIR to commit changes --"
cd $TMPDIR
git add . -A
git commit -m "addrc $1"
git push origin master

# 4. Remove $TMPDIR
echo
echo "-- Cleanup - Removing $TMPDIR --"
cd ~
sudo rm -rf $TMPDIR

echo
echo "Done!"
