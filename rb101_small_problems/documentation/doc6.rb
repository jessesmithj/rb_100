# 5.step(to: 10, by: 3) { |value| puts value }

# 5 
# 8

1.step(by: 4, to: 10) { |value| puts value }


# step(by: step, to: limit) { |i| block } → self 
# The argument named :by is a "step" value, while the argument named :to is a limit. 
# The text below the signature shows that the "step" value indicates how much to increment 
# the index by with each iteration, while "limit" is the largest value; 
# if the index exceeds this value, the loop exits.