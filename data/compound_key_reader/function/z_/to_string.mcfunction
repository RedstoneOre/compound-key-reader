#Set
$data modify storage compound_key_reader:temp ToJsonTxVal set from $(from)
#Special: Target is a string
execute if function compound_key_reader:z_/to_string.ifconvstr run return run function compound_key_reader:z_/to_string.convstr
# say haha
#Convert
execute in compound_key_reader:dataswap run data modify block 7 0 7 front_text.messages[0] set value '{"storage":"compound_key_reader:temp","nbt":"ToJsonTxVal"}'
data modify storage compound_key_reader:temp args set value {}
execute in compound_key_reader:dataswap run data modify storage compound_key_reader:temp args.str set from block 7 0 7 front_text.messages[0]
#Result
function compound_key_reader:z_/_to_string.result with storage compound_key_reader:temp args