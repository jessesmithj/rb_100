name = 'Bob'
puts name.object_id
save_name = name
puts save_name.object_id

name.upcase!
puts name.object_id
puts save_name.object_id

# puts name, save_name


## name references to the object 'Bob'
## save_name references the object stored in name, which is 'Bob'
## both have the same object_id

## the method upcase! is called on name, which mutates the caller (in this case, name)
## since the object in name is mutated in place & save_name is references the same object
## save_name is also mutated 

## Thus, the answer is "BOB" for both name & save_name