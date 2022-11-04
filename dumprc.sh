TMPDIR=/tmp/myconfigs

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone git@github.com:NcUltimate/configs.git $TMPDIR

# 2. Copy all .include-ed files into $TMPDIR
echo "-- Copying files into $TMPDIR --"
cp -Rv $(cat $TMPDIR/.includes | sed s_^_$HOME/_g) $TMPDIR

# 3. Go to $TMPDIR to commit changed files
echo "-- CD to $TMPDIR to commit changes --"
cd $TMPDIR
git add . -A
git commit -m "$(date "+%Y%m%d%H%M%S_dumprc")"
git push origin master

# 4. Remove $TMPDIR
echo "-- Cleanup - Removing $TMPDIR --"
cd ~
sudo rm -rf $TMPDIR

echo "Done!"
