# Compound Key Reader - Document
## Read the keys of nbt compounds easily
## Command Format
```mcfunction
function compound_key_reader:get {data:{from/value:...},result:'<ResultFunction>'}
```
+ **Result**: Save the compound as a list in `storage compound_key_reader:result keys`
+ + Like `key+value+seq` format:
```json
[ { "value": "(value)", "key": "(key)", "seq": "(seq)" }, ... ]
```

## UPGRADING
+ If you want to update from `<=Beta2.0` to `>=Beta2.1`,follow the `UPGRADE.1.md`

## Result Functions
+ **The functions will beed called by the reader function to get the format of the result.**
+ **You can use it just like `foreach(<ResultFunction>)` in the following format**

|Type       |Value      |Description                                    |
|----------:|:----------|:----------------------------------------------|
|Arguments  |`c`        |Count                                          |
|Arguments  |`l`,`r`    |Substr cur                                     |
|ReturnValue|`0`\|`VOID`|No Result                                      |
|ReturnValue|+`1`       |Save substr cur((l,r]) in xx.cur               |
|ReturnValue|+`2`       |Save key name in xx.key                        |
|ReturnValue|+`4`       |Save key value in xx.value                     |
|ReturnValue|+`8`       |Save the sequence in the keys in xx.seq        |
|**Presets**|`compound_key_reader:result_preset/key`      |key+seq      |
|**Presets**|`compound_key_reader:result_preset/key-value`|key+value+seq|
|**Presets**|`compound_key_reader:result_preset/all`      |(all)        |
+ **Substr curs**:Use `string storage compound_key_reader:result str $(l) $(r)` to get the cur