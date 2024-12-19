#Dataswap
execute in by_redstoneore:dataswap positioned 7 0 7 run function compound_key_reader:z_/init_dataswap
#Scoreboard
scoreboard objectives add compound_key_reader.data dummy
scoreboard objectives add compound_key_reader.constant dummy
scoreboard players set 2 compound_key_reader.constant 2
scoreboard players set -1 compound_key_reader.constant -1