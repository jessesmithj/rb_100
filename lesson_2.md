**Lesson 2 Small Problems**

**What is a boolean?**
A boolean is an object whose only purpose is to convey whether it is "true" or "false".

**What is short circuiting with the && and II operators?** 
Short Circuiting which means it will stop evaluating expressions once it can guarantee the return value.

&& will short circuit when it encounters the first false expression

```irb
irb:001> false && 3/0
=> false
```

II or will short circuit when it encounters the first true expression

```irb
irb:001> true || 3/0
=> true
```

**Which values are not considered truthy values in Ruby?**
Ruby  *considers everything to be truthy other than `false` and `nil`*. 

Note that an expression that Ruby *considers true* is not the same as the `true` object. This is what "truthiness" means.

**In Ruby, parentheses are optional when invoking a method call**

**Can local variables initialized within an if statement be accessed outside of the if?**
Yes

**PsuedoCode helps load the problem into our brain first**

| keyword             | meaning                              |
| ------------------- | ------------------------------------ |
| START               | start of the program                 |
| SET                 | sets a variable we can use for later |
| GET                 | retrieve input from user             |
| PRINT               | displays output to user              |
| READ                | retrieve value from variable         |
| IF / ELSE IF / ELSE | show conditional branches in logic   |
| WHILE               | show looping logic                   |
| END                 | end of the program                   |

There are two layers to solving any problem:

1.  The logical problem domain layer.
2.  The syntactical programming language layer.



**High Level Pseudo Code Example:**

```none
while user wants to keep going
  - ask the user for a collection of numbers
  - iterate through the collection one by one.
    - save the first value as the starting value.
    - for each iteration, compare the saved value with the current value.
    - if the saved value is greater, or it's the same
      - move to the next value in the collection
    - otherwise, if the current value is greater
      - reassign the saved value as the current value

  - after iterating through the collection, save the largest value into the list.
  - ask the user if they want to input another collection

return saved list of numbers
```

**Formal Pseudo Code Version Example:**

```none
START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
  GET "enter a collection"
  SET collection
  SET largest_number = SUBPROCESS "extract the largest one from that collection"
  large_numbers.push(largest_number)
  GET "enter another collection?"
  IF "yes"
    keep_going = true
  ELSE
    keep_going = false
  IF keep_going == false
    exit the loop

PRINT large_numbers

END
```

**`Kernel` methods are available everywhere in Ruby.**



**Debugging is arguably the most important skill you need to learn as a  programmer**. Focus on developing a patient, systematic temperament;  carefully read error messages; use all the wonderful resources at your  disposal; approach debugging in sequential steps; and use the techniques we covered above -- especially Pry. 



**Don't rely on the precedence rules when you're mixing operators; use parentheses whenever you mix operators in an expression.**



**Tap Method**
Yields self to the block, and then returns self. The primary purpose of this method is to “tap into” a method chain, in order to perform operations on intermediate results within the chain.

```ruby
(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
```



**The only way to retain information is to pay with time. **Debugging an issue for hours and hours will ensure that this problem gets *burned* into long term memory. You pay for those burns with time but they pay  back with interest. If you spend 3 hours debugging, those hours are not  wasted - you won't make that mistake again. We want to encourage you to  think about debugging from that perspective - embrace your burns and  remember their lessons. 

**Naming Conventions:** Choose descriptive variable and method names. In Ruby, make sure to use `snake_case` when naming everything, except classes which are `CamelCase` or constants, which are all `UPPERCASE`.

Constants should be immutable (do not change them)

The instinct to extract code to a method is good. However, **make sure that the method does one thing, and that its responsibility is very limited**. This implies indirectly that your methods should be short  (let's say, around 10 lines or so). If it's more than 15 lines long, it  would probably be better to split it to 2 or 3 methods.

**Ruby blocks create a new scope for local variables**. You can think  of the scope created by a block following a method invocation as an *inner scope*. Nested blocks will create nested scopes. A variable's scope is determined by where it is initialized. 1) The first is that inner scope can access outer scope variables. 2) You can *change* variables from an inner scope and have that change affect the outer scope.

**variable shadowing** prevents access to the outer scope local variable & prevent changes being made to the outer scope variable.

Make sure you know how local variable scope works with regards to a  method definition and a method invocation with a block. Play around with various scenarios until you feel comfortable. It's likely you'll forget these rules, but the most important thing is to be able to quickly jump in irb or open up your editor and refresh your memory.


**Method definition** is when, within our code, we define a Ruby method using the `def` keyword.

```ruby
def greeting
  puts "Hello"
end
```

**Method invocation** is when we call a method, whether  that happens to be an existing method from the Ruby Core API or core  Library, or a custom method that we've defined ourselves using the `def` keyword.

A block is *part of* the method invocation.  In fact, *method invocation* followed by curly braces or `do..end` is the way in which we *define* a block in Ruby.

We can think of **method definition** as setting a certain  scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it  interacts (if at all) with a block. We can then think of **method invocation** as using the scope set by the method definition. If the method is  defined to use a block, then the scope of the block can provide  additional flexibility in terms of how the method invocation interacts  with its surroundings.

- The `def..end` construction in Ruby is method definition
- Referencing a method name, either of an existing method or subsequent to definition, is method invocation
- Method invocation followed by `{..}` or `do..end` defines a block; the block is *part of* the method invocation
- Method definition *sets* a scope for local variables in terms of parameters and interaction with blocks
- Method invocation *uses* the scope set by the method definition



**Pass by value**: the method only has a *copy* of the original  object. Operations performed on the object within the method have no  effect on the original object outside of the method.
Pass by value means copying the original objects, so the original object cannot be mutated.

```ruby
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim
```

**Pass by reference**: Operations within the method affect the original object. Pass by reference means that only a reference to an object is passed  around; the variables used inside a method are bound to the original  objects. This means that the method is free to mutate those objects.

```ruby
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim
```



Some people call Ruby *pass by value of the reference* or *call by sharing*. Most important concept: **When an operation within the method mutates the caller, it will affect the original object**s 

**Mutating the caller** when calling a method, the argument can be altered permanently

**Variables are pointers to physical space in memory**. In other words, variables are essentially labels we create to refer to some physical memory address in your computer. 	

- Some operations mutate the address space, while others simply make the variable point to a different address space.

  

**Every object in Ruby has a unique object id**, and that object id can be  retrieved simply by calling `#object_id` on the object in question. Even literals, such as numbers, booleans, `nil`, and Strings have object  ids:

```
>> 5.object_id
=> 11>> true.object_id
=> 20>> n
nil.object_id
=> 8>> "abc".object_id
=> 70101471581080
```

**Reassignment to a variable doesn’t mutate the  object referenced by that variable; instead, the variable is bound to a  different object**. The original object is merely disconnected from the  variable. Simple assignment never mutates an immutable object. Immutable objects aren’t limited to numbers and booleans. Objects of some complex classes, such as `nil` (the only member of the NilClass class) and Range objects (e.g., `1..10`) are immutable.

Assignment does not mutate an object; it merely connects the variable to a new object. **While `=` is not an actual method in Ruby, it acts like a non-mutating method, and should be treated as such.**

Assignment always binds the target variable on the left hand side of the `=` to the object referenced by the right hand side. T**he object originally referenced by the target variable is never mutated.**

**None of these operations  `*=`, `+=`, and `%=` mutate their operands** Example below:

```
>> s = 'Hello'
=> "Hello">> s.object_id
=> 70101471465440>> s += ' World'
=> "Hello World">> s
=> "Hello World">> s.object_id
=> 70101474966820
```

Though it looks as though we are mutating `s` when we write `s += ' World'`, **we are actually creating a brand-new String with a new object id, then binding `s` to that new object.** We can see by looking at the object ids that a new object was created.



Unlike numbers, booleans, and a few other types, **most objects in Ruby  are mutable**; they are objects of a class that permit changes to the  object’s state in some way. 

**In Ruby, you can use index assignment to alter what object is referenced by an element:**

A setter method (or simply, a setter) is a method defined by a Ruby  object that allows a programmer to explicitly change the value of part  of an object. Setters always use a name like `something=`.  Ex: `Array#[]=` 


**Indexed assignment is mutating** 

```
str[3] = 'x'
array[5] = Person.new
hash[:age] = 25
```

This looks exactly like assignment, which is non-mutating. However, in this case, it is mutating. `#[]` mutates the original object (the String, Array, or Hash). It doesn't change the binding of each variable (`str`, `array`, `hash`).



```
>> a = [3, 5, 8]
=> [3, 5, 8]>> a.object_id
=> 70240541515340>> a[1].object_id
=> 11>> a[1] = 9
=> 9>> a[1].object_id
=> 19>> a
=> [3, 9, 8]>> a.object_id
=> 70240541515340
```

Here, we can see that we have mutated the Array `a` by assigning a new value to `a[1]`, but have not created a new Array. `a[1] = 9` isn't assigning anything to `a`; it is assigning `9` to `a[1]`; that is, this assignment reassigns `a[1]` to the new object `9`. You can see this by looking at `a[1].object_id` both before and after the assignment. Despite this change, though, `a` itself still points to the same (now mutated) Array we started with.


Concatenation is mutating. (#<< & .concat) However, there is a major difference; `+=` is non-mutating, but `#<<` is mutating. 

**The presence of a `!` at the end of a method name is a pretty good indicator that a method mutates its  caller.** However, not all mutating methods use the `!` convention. (#[], #<<, .concat method, etc.)

A method that does not mutate its arguments or caller is non-mutating  with respect to those objects; a method that does mutate some of them is mutating with respect to the changed objects.

We’ve also learned that **assignment in Ruby acts like a non-mutating  method** — it doesn’t mutate any objects, but does alter the binding for  the target variable. 

- [Variable References and Mutability of Ruby Objects](https://launchschool.com/blog/references-and-mutability-in-ruby)
- [Mutating and Non-Mutating Methods in Ruby](https://launchschool.com/blog/mutating-and-non-mutating-methods)
- [Object Passing in Ruby - Pass by Reference or Pass by Value](https://launchschool.com/blog/object-passing-in-ruby)



- **In Ruby, variables are references to objects and do not contain objects themselves**. When an object is passed in as an argument to a method, the method parameter is essentially acting as variable referencing that object.

  - When an object is passed to a method call as an argument, the parameter assigned to it acts as a pointer to the original object.
  - Ruby creates references to objects when passing them as method arguments, rather than creating copies of objects.

- In Ruby, **re-assigning a variable has no effect on the object the  variable is bound to; it merely binds the variable to a different  object.**

  - Re-assigning a variable within a method doesn't affect the object that the variable is pointing to outside of the method.

  When a local variable is initialized in the outer scope, it can be  referenced from within the block's inner scope, but not vice versa. **Even if a local variable and the method have the same name, Ruby will give precedence to the local variable inside the block.**

  Variables are essentially labels that act as pointers to some physical space (memory address) in your computer.





- **Making your code readable is of paramount importance, not only for others, but for future self.**
- If you find yourself constantly looking at a method's implementation  every time you use it, it's a sign that the method needs to be improved.
- If you have some methods that output values, then preface those methods with `display_` or `print_`
- A method should do one thing, and be named appropriately. If you can  treat a method as a "black box", then it's a well designed method.
- You should be able to use a method called `total` and understand that it returns a value, and a method called `print_total` returns nil, without looking at the implementation of either. On the other hand, if there's a method called `total!`, then it's a sign that there is some side effect somewhere.
  - Don't mix up those concerns. Don't write a method that mutates,  outputs and returns a meaningful value. Make sure your methods just do  one of those things.
- Don't mutate a collection while iterating through it. You can, however, mutate the individual elements within that collection, just not the collection itself. Otherwise, you'll get unexpected behavior.
- **Variable shadowing** occurs when you choose a local variable in an inner  scope that shares the same name as an outer scope. It's incredibly easy  to make this mistake, and essentially prevents you from accessing the  outer scope variable from an inner scope.
  - Be careful about choosing appropriate block variables (the thing between the `| |`) when working with blocks. If you pick a name that is identical to an  outer scope variable, variable shadowing will prevent you from using the outer scope variable.
- We recommend that you **never use assignment in a conditional**

Suppose you have an array of names, and you want to print out a string  for every name in the array, but you don't care about the actual names.  In those situations, **use an underscore to signify that we don't care  about this particular parameter.**

```ruby
names = ['kim', 'joe', 'sam']
names.each { |_| puts "got a name!" }
```

We can't say this enough: spend the time programming. Learn to debug  through problems, struggle with it, search for the right terms, play  around with the code, and you'll be able to transform into a  professional developer. Because that's exactly what professional  developers do on a daily basis.

```
&&` has higher precedence than `||
```

A **variable's scope** determines where in a program a variable is available for use, in other words where it can be accessed.



```ruby
method_invocation { block }
```

```ruby
arr = [1, 2, 3]

arr.each do |num|
  a = 5      # a is initialized here
end

puts a       # is it accessible here?
```

In the above code, the `do end` is an argument passed to the method invocation for `each`. As such, the `do end` here defines a block, and consequently creates an inner scope making `a` not accessible. Since it is not accessible the `puts a` at the last line will result in an error.

The `do ... end` or `{ ... }` **IS** a block if it follows a method invocation.

Blocks cannot run on their own, they must be associted with a method - inside a block we can put any ruby method we want