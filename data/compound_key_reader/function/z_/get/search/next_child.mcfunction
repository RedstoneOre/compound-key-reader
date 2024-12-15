# $say NXTCHILD $(r) : $(k)
#Get the lenth
$data modify storage compound_key_reader:temp get_convert.compval set from storage compound_key_reader:temp get_convert.compound.$(k)
function compound_key_reader:z_/to_string {from:'storage compound_key_reader:temp get_convert.compval'}
execute store result score get.place compound_key_reader.data run data get storage compound_key_reader:temp result
#Set cur
$scoreboard players add get.place compound_key_reader.data $(r)
scoreboard players add get.place compound_key_reader.data 2
execute if score get.place compound_key_reader.data > get.strlen compound_key_reader.data run return fail
return 0