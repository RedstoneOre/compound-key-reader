# $say CHILD $(f)
#Result same as _child
#Next child
scoreboard players add get.count compound_key_reader.data 1
#Find child
$data modify storage compound_key_reader:temp get_convert.child_args set value {f:'$(f)'}
execute store result storage compound_key_reader:temp get_convert.child_args.c int 1 run scoreboard players get get.count compound_key_reader.data
execute store result storage compound_key_reader:temp get_convert.child_args.p int 1 run scoreboard players get get.place compound_key_reader.data
return run function compound_key_reader:z_/get/search/_child with storage compound_key_reader:temp get_convert.child_args