execute if score get.slash compound_key_reader.data matches -1 run return fail
execute if score get.espace compound_key_reader.data matches 0 run return run scoreboard players set get.espace compound_key_reader.data 2
execute if score get.espace compound_key_reader.data matches 2 run return run scoreboard players set get.espace compound_key_reader.data 0