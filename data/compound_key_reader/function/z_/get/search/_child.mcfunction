# $say CHILD: Pos:$(p) Count:$(c) Func:$(f)
#Set new cur
$scoreboard players set get.strcur compound_key_reader.data $(p)
#Set arguments
$data modify storage compound_key_reader:temp get_convert.result set value {cur:{l:$(p),c:$(c)}}
#Get key once
$execute store result storage compound_key_reader:temp get_convert.result.cur.r int 1 store success storage compound_key_reader:temp get_convert.result.suc int 1 run function compound_key_reader:z_/get/search/once {p:$(p)}
#Nothing else,exit
execute if data storage compound_key_reader:temp get_convert.result{suc:0b} run return fail
#Check result
data modify storage compound_key_reader:temp get_convert.result merge value {format:{f:10},continue:1}
$execute store result storage compound_key_reader:temp get_convert.result.format.f int 1 store success storage compound_key_reader:temp get_convert.result.continue int 1 run function $(f) with storage compound_key_reader:temp get_convert.result.cur
# execute if data storage compound_key_reader:temp get_convert.result{continue:0b} run return fail
function compound_key_reader:z_/get/result/main with storage compound_key_reader:temp get_convert.result.format
#Next
function compound_key_reader:z_/get/search/export_str with storage compound_key_reader:temp get_convert.result.cur
data modify storage compound_key_reader:temp get_convert.args set value {}
data modify storage compound_key_reader:temp get_convert.args.r set from storage compound_key_reader:temp get_convert.result.cur.r
data modify storage compound_key_reader:temp get_convert.args.k set from storage compound_key_reader:temp get_convert.nowkey
# say Continue
return run function compound_key_reader:z_/get/search/next_child with storage compound_key_reader:temp get_convert.args