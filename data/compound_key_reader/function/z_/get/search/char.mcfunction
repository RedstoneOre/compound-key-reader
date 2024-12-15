#Check 1 char
scoreboard players add get.strcur compound_key_reader.data 1
$data modify storage compound_key_reader:temp get_convert.check set value {l:$(p)}
execute store result storage compound_key_reader:temp get_convert.check.r int 1 run scoreboard players get get.strcur compound_key_reader.data
return run function compound_key_reader:z_/get/search/check with storage compound_key_reader:temp get_convert.check