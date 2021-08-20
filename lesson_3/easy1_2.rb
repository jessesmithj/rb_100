Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

    what is != and where should you use it? ## does not equal
    put ! before something, like !user_name ## 'not' this object/method
    put ! after something, like words.uniq! ## mutating method
    put ? before something ## not a thing
    put ? after something ## will return a boolean value 
    put !! before something, like !!user_name ##turn object into boolean value


! is a bang suffix, that means 'not' when used as a conditional or, when used on a method call, indicates that the method will mutate the caller
? is used in methods that will return a boolean value - a coding style convention 

##Answer

Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:

    != means "not equals"
    ? : is the ternary operator for if...else
    !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
    !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

