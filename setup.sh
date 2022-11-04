TMPDIR=/tmp/myconfigs

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone https://github.com/NcUltimate/configs.git $TMPDIR

# 2. Make sure all /tmp/myconfigs/.includes directory paths exist
DIRS=$(cat $TMPDIR/.includes | egrep /. | xargs dirname | sed s_^_$HOME/_g)
if [ -n "$DIRS" ]; then
  echo "-- Creating Directories --"
  echo $DIRS
  mkdir $DIRS
fi

# 3. Recursively copy everything from /tmp/myconfigs/.includes into $HOME directory
echo "-- Copying files into $HOME --"
cp -Rv $(cat $TMPDIR/.includes | sed s_^_$TMPDIR/_g) ~

# 4. Remove cloned configs repo
echo "-- Cleanup - Removing $TMPDIR --"
sudo rm -rf $TMPDIRo

# 5. Source changes
echo "-- Sourcing new changes --"
source ~/.zshrc
