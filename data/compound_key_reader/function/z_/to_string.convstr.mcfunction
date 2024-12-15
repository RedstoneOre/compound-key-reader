# say convstr
data modify storage compound_key_reader:temp ToJsonTxStr set value {}
data modify storage compound_key_reader:temp ToJsonTxStr.v set from storage compound_key_reader:temp ToJsonTxVal
function compound_key_reader:z_/to_string {from:'storage compound_key_reader:temp ToJsonTxStr'}
data modify storage compound_key_reader:temp result set string storage compound_key_reader:temp result 3 -1