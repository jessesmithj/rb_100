def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


# You're not returning a false condition, and you're not handling the case that 
# there are more or fewer than 4 components to the IP address 
# (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."


# Return a false condition
# IP addresses have 4 components, no more or less (not an IP address if under 4 components)


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.size == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
  else 
    return false
  end

  true
end


# Input/Output should look like this
# dot_separated_ip_address?("10.4.123.255") => true
# dot_separated_ip_address?("3.12.255") => false
# dot_separated_ip_address?("not.an.ip.address") => false 


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
