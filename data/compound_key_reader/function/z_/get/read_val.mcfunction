# If the user use 'value' format
data modify storage compound_key_reader:temp get_source set from storage compound_key_reader:temp storage.get.value
data remove storage compound_key_reader:temp storage.get.value
data modify storage compound_key_reader:temp storage.get.from set value 'storage compound_key_reader:temp get_source'