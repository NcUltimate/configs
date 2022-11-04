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
`dumprc` will clone this repo, cp all `.includes` files into that dir, add an auto-gen commit, and push.

#### `addrc`
`addrc [FILE]` will clone this repo, append the given file to the `.includes`, auto-gen a commit, and push.

