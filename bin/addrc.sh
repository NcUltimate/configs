TMPDIR=/tmp/myconfigs

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone git@github.com:NcUltimate/configs.git $TMPDIR

# 2. Append file ($1) to .includes
echo
echo "-- Appending file "$1" to $TMPDIR/.includes --"
echo $1 >> $TMPDIR/.includes

# 3. Go to $TMPDIR to commit changed files
echo
echo "-- CD to $TMPDIR to commit changes --"
cd $TMPDIR
git add .includes
git commit -m "addrc $1"
git push origin master

# 4. Remove $TMPDIR
echo
echo "-- Cleanup - Removing $TMPDIR --"
cd ~
sudo rm -rf $TMPDIR

echo
echo "Done!"
