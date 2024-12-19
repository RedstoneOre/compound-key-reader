$data modify storage compound_key_reader:temp get_convert.nowchar.col set string storage compound_key_reader:temp get_convert.str $(l) $(m)

execute if data storage compound_key_reader:temp get_convert.nowchar{col:':'} if score get.espace compound_key_reader.data matches 0 run return run function compound_key_reader:z_/get/search/find_colon
execute if data storage compound_key_reader:temp get_convert.nowchar{col:'"'} run function compound_key_reader:z_/get/search/espace/double
execute if data storage compound_key_reader:temp get_convert.nowchar{col:"'"} run function compound_key_reader:z_/get/search/espace/single
execute if data storage compound_key_reader:temp get_convert.nowchar{col:'\\'} run scoreboard players operation get.slash compound_key_reader.data *= -1 compound_key_reader.constant
execute unless data storage compound_key_reader:temp get_convert.nowchar{col:'\\'} run scoreboard players set get.slash compound_key_reader.data 1

return fail