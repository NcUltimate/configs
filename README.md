# Terminal Config Files
 Keep syntax highlighting, aliases, and commands consistent across VMs and laptops.

## Usage

### First time setup:

This repo manipulates dotfiles. Run with caution. You will need to configure git
to clone dotfiles, possibly globally, with:
```sh
git config --global core.alwaysShowDotfiles true
```

Then, run:
```sh
curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/setup.sh | sh
```

### General Usage

After running first time setup, the below commands are all you need to keep your RC files synced.

#### `loadrc`
`loadrc` simply runs the above command to load the latest rc files from this repo.

#### `dumprc`
`dumprc` will:

1. Clone this repo into `/tmp/myconfigs`
2. Copy all specified files in`.includes` from `$HOME` into `/tmp/myconfigs/rc`
3. Add an auto-gen commit & push
4. `rm /tmp/myconfigs`

#### `addrc [FILE]`
`$FILE` should be the name of a dir or file at $HOME. `addrc` will:

1. Clone this repo into `tmp/myconfigs`
2. Append the given file to `.includes`
3. Copy `$FILE` into `rc/`
4. Auto-gen a commit & push
5. `rm /tmp/myconfigs`

#### `rmrc [FILE]`
`$FILE` should be the name of a dir or file at $HOME. `rmrc` will:

1. Clone this repo into `tmp/myconfigs`
2. Remove the given file from `.includes`
3. Remove `$FILE` from `rc/`
4. Auto-gen a commit & push
6. `rm /tmp/myconfigs`

