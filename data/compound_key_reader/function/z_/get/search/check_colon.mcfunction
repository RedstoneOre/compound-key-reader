$data modify storage compound_key_reader:temp get_convert.colon.esp set string storage compound_key_reader:temp get_convert.str $(l) $(m)
$data modify storage compound_key_reader:temp get_convert.colon.col set string storage compound_key_reader:temp get_convert.str $(m) $(r)
execute unless data storage compound_key_reader:temp get_convert.colon{esp:'\\'} if data storage compound_key_reader:temp get_convert.colon{col:':'} run return 0
return fail