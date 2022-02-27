# Command line
`irb` in the terminal starts ruby in the command line

`exit` allows you to exit irb in the command line

To run a ruby file in the command line:
```ruby
ruby example.rb
```
To exit a program execution loop type `ctrl + c`

# The basics
## Literals
Any notation that lets you represent a fixed value in source code such as *strings*, *integers*, *floats*, *booleans*, etc. 
## Variables
`method` is a reusable piece of code:
```ruby
def do_this
end
```
## Methods
```ruby
def name_here
  #method body goes here
end
```
This is an example below:
```ruby
def say(words) #words here is the **parameter**
  puts words
end
```

The **argument** is passed into the **parameter** `words`

A **default** **paramater** can be passed like so: 

`def say(words='hello')`

## Flow Control

### Conditionals

### Ternary Operators

Ternary statement works as follows: 

`true ? "this is true" : "this is not true"`
==> this is true

`false ? "this is true" : "this is false"`
==> this is false

### Case statements
```ruby
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5 or 6"
end
```
## Loops & iterators
---
Example of a simple loop:
```ruby
# next_loop.rb

i = 0
loop do
  i = i + 2
  if i == 4
    next # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end
```

### While loops

Example of a simple while loop:
```ruby
# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"
```

### Until loops

Exmaple of an until loop:
```ruby 
# countdown.rb

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"
```

### For loops

Example of a for loop:
```ruby
# countdown.rb

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"
```

**Conditional while loop** example:
```ruby
x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

==> 1
3
5
7
9
```

Example of a conditional while loop using `break` and `next` :
```ruby
# conditional_while_loop_with_next.rb

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
```

### Iterators
Iterators are methods that loop over a given set of data and allow you to operate on each element

`.each` method example:
```ruby
names = ['Mark', 'Robert', 'Serena']
names.each = { |name| puts name }
==> 
Mark
Robert
Serena
```

### Recursion
Calling a method from within itself.

My own example that counts down from 1:
```ruby
#Write a method that counts down to zero using recursion
def count_to_zero(start)
  puts start.to_int
  if start > 0
    count_to_zero(start - 1)
  end
end
```

### Arrays
An **array** is an ordered list of of elements of any *type*

## Modifying arrays
`.pop` method to remove the last element permanently

`.push` adds an element to the array. The *shovel* method can also be used with `<<`
Example: `array << "add this string" #would add this to the end of array`

Other modification methods
- `.delete_at(1)` **permanently** removes element at selected index (mutates the caller)
- `.delete("element")` **permanently** deletes all instances of selected values (mutates the caller)
- `.uniq` removes any duplicates from an array **not permanent** (does NOT mutate the caller)
  - `!` bang suffix can be added to make the change **permanent**
- `.select` can select all variables given a parameter
  - ex. `numbers =  [1,2,3,4,5] { |number| number > 2 }
    - => [3,4,5]
    - this is **not permanent**
- **Mutating the caller** is known as **destructive** behavior
- `.flatten` converts a nested array to a non-nested array
  - not *destructive*

### Hashes
Example of code of *optional parameters*

```ruby
# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
````

