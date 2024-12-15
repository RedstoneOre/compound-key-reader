#Init result
data modify storage compound_key_reader:temp get_result.v set value {}
$scoreboard players set get.result.format compound_key_reader.data $(f)
# $say format:$(f)
#Strcur
scoreboard players operation get.result.format.strcur compound_key_reader.data = get.result.format compound_key_reader.data
scoreboard players operation get.result.format.strcur compound_key_reader.data %= 2 compound_key_reader.constant
execute if score get.result.format.strcur compound_key_reader.data matches 1 run function compound_key_reader:z_/get/result/strcur
#Key name
scoreboard players operation get.result.format compound_key_reader.data /= 2 compound_key_reader.constant
scoreboard players operation get.result.format.keyname compound_key_reader.data = get.result.format compound_key_reader.data
scoreboard players operation get.result.format.keyname compound_key_reader.data %= 2 compound_key_reader.constant
execute if score get.result.format.keyname compound_key_reader.data matches 1 run function compound_key_reader:z_/get/result/keyname with storage compound_key_reader:temp get_convert.result.cur
#Value
scoreboard players operation get.result.format compound_key_reader.data /= 2 compound_key_reader.constant
scoreboard players operation get.result.format.value compound_key_reader.data = get.result.format compound_key_reader.data
scoreboard players operation get.result.format.value compound_key_reader.data %= 2 compound_key_reader.constant
execute if score get.result.format.value compound_key_reader.data matches 1 run function compound_key_reader:z_/get/result/value with storage compound_key_reader:temp get_convert.result.cur
#Sequence
scoreboard players operation get.result.format compound_key_reader.data /= 2 compound_key_reader.constant
scoreboard players operation get.result.format.sequence compound_key_reader.data = get.result.format compound_key_reader.data
scoreboard players operation get.result.format.sequence compound_key_reader.data %= 2 compound_key_reader.constant
execute if score get.result.format.sequence compound_key_reader.data matches 1 run function compound_key_reader:z_/get/result/sequence
data modify storage compound_key_reader:result keys append from storage compound_key_reader:temp get_result.v