# $say execute if score get.strlen compound_key_reader.data matches ..$(r) run return 1
$execute if score get.strlen compound_key_reader.data matches ..$(r) run return 1
#Get Argument
$data modify storage compound_key_reader:temp get_convert.check set value {m:$(r)}
$scoreboard players set tmp compound_key_reader.data $(r)
scoreboard players add tmp compound_key_reader.data 1
execute store result storage compound_key_reader:temp get_convert.check.r int 1 run scoreboard players get tmp compound_key_reader.data
scoreboard players remove tmp compound_key_reader.data 1
$execute unless score tmp compound_key_reader.data matches ..$(l) run scoreboard players remove tmp compound_key_reader.data 1
execute store result storage compound_key_reader:temp get_convert.check.l int 1 run scoreboard players get tmp compound_key_reader.data
#Check
return run function compound_key_reader:z_/get/search/check_colon with storage compound_key_reader:temp get_convert.check