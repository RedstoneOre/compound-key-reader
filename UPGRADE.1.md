# Upgrade Document
## from `<=Beta2.0` to `>=Beta2.1`

#### Operation
1. Stop the server / Quit to title
2. _(Backup)_
3. Remove dictionary `dimensions/compound_key_reader/dataswap` of the save
4. Remove `Data.WorldGenSettings.dimensions."compound_key_reader:dataswap"` of `level.dat` of the save by [NBTExpolorer](https://github.com/jaquadro/NBTExplorer/releases)
#### Necessity: $\color{green} {WEAK}$
If you don't do that,the useless data of dimension `compound_key_reader:dataswap` won't be removed.