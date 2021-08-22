def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)




##########

# def foo(param = "no")
#   "yes"
# end

# p foo()