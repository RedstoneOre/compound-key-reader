#Read data: {from/value:...}
$data modify storage compound_key_reader:temp storage.get set value $(data)
execute unless data storage compound_key_reader:temp storage.get.from run function compound_key_reader:z_/get/read_val
execute unless data storage compound_key_reader:temp storage.get.from run return fail
function compound_key_reader:z_/get/copy with storage compound_key_reader:temp storage.get
function compound_key_reader:z_/to_string with storage compound_key_reader:temp storage.get
data modify storage compound_key_reader:temp get_convert.str set from storage compound_key_reader:temp result
data modify storage compound_key_reader:temp get_convert.type set string storage compound_key_reader:temp get_convert.str -1
execute unless data storage compound_key_reader:temp get_convert{type:"}"} run return fail
data modify storage compound_key_reader:temp get_convert.str set string storage compound_key_reader:temp get_convert.str 1 -1
data modify storage compound_key_reader:result str set from storage compound_key_reader:temp get_convert.str
#Find
$function compound_key_reader:z_/get/search/search {func:'$(result)'}