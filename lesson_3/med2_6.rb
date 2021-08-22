def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

#simplify code

# def color_valid(color)
#   (color == "blue" || color == "green") ? (puts true) : (puts false)
# end

# color_valid("green")
# color_valid("yellow")
# color_valid("blue")


## Ruby will automatically evaluate statements, so this method:

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")
p color_valid("yellow")