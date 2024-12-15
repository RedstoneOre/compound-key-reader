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
## Result Functions
+ **The functions will beed called by the reader function to get the format of the result.**

|Category   |Value      |Description                                    |
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
+ **Substr curs**:Use `string storage compound_key_reader:result str $(l) $(r)` to get the cur