TMPDIR=/tmp/myconfigs

# 1. Clone the configs repo into /tmp/myconfigs
echo "-- Cloning configs into $TMPDIR --"
git clone https://github.com/NcUltimate/configs.git $TMPDIR

echo "-- Copying files into $TMPDIR --"
cp -Rv $(cat $TMPDIR/.includes | sed s_^_$HOME/_g) $TMPDIR
