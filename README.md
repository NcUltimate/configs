# Terminal Config Files
 Keep syntax highlighting, aliases, and commands consistent across VMs and laptops.

## Usage

### First time setup:
```sh
curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/setup.sh | sh
```

### General Usage

After running first time setup, the below commands are all you need to keep your RC files synced.

#### `loadrc`
`loadrc` simply runs the above command to load the latest rc files from this repo.

#### `dumprc`
`dumprc` will:

1. Clone this repo into `/tmp/myconfigs`
2. Copy all specified files in`.includes` from `$HOME` into `/tmp/myconfigs/rc`
3. Add an auto-gen commit
4. Push
5. `rm /tmp/myconfigs`

#### `addrc [FILE]`
`$FILE` should be the name of a dir or file at $HOME. `addrc` will:

1. Clone this repo into `tmp/myconfigs`
2. Append the given file to `.includes`
3. Copy `$FILE` into `rc/`
4. Auto-gen a commit
5. Push
6. `rm /tmp/myconfigs`

