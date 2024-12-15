data modify storage compound_key_reader:temp get_result.v.cur set value []
data modify storage compound_key_reader:temp get_result.v.cur append from storage compound_key_reader:temp get_convert.result.cur.l
data modify storage compound_key_reader:temp get_result.v.cur append from storage compound_key_reader:temp get_convert.result.cur.r