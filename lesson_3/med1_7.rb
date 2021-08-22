munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p munsters
p munsters.object_id

def mess_with_demographics(demo_hash)
  new_mess_with_demo = demo_hash.values.each do |family_member|
                         family_member["age"] += 42
                         family_member["gender"] = "other"
                       end
  p new_mess_with_demo
  p new_mess_with_demo.object_id
end

mess_with_demographics(munsters)

p munsters
p munsters.object_id


#The original data is mutated and the object_id of the munsters hash remains the same. 