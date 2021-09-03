def repeat(string, number)
  number.times do
    puts string
  end
end

# def repeat(string, integer)
#   while integer > 0
#     puts string
#     integer -= 1
#   end
# end

repeat("SNES", 10)
repeat("Atari", 0)
repeat("Sega Genesis", -2)
repeat("Playstaton", 10)


