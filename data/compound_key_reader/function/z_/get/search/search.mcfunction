#Search
# func: The check function,see README.md
#Init checking
scoreboard players set get.count compound_key_reader.data -1
scoreboard players set get.place compound_key_reader.data 0
scoreboard players set get.espace compound_key_reader.data 0
scoreboard players set get.slash compound_key_reader.data 1
# say scoreboard players set get.espace compound_key_reader.data 0
execute store result score get.strlen compound_key_reader.data run data get storage compound_key_reader:temp get_convert.str
#New result list
data modify storage compound_key_reader:result keys set value []
#Check
$function compound_key_reader:z_/get/search/_search {f:'$(func)'}