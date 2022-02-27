# RB 100 Notes
## Hashes
### Hash literal notation
- `new_hash = { "one" => 1}`
- First item is a *key* => (hash rocket) *value*
### Hash constructor notation
- `new_hash = Hash.new`
### Hash solutions
- `.each_key`
- `.each_value`
## Miscellaneous
### Non-true values (only two)
- `nil` = nothing at all
- `false` = not true
- They are *not* the same
## Symbols
- Always start with a `:`
- Primarily used as hash keys or for referencing method names
- Symbols are **immutable**
- Only **one** copy of a symbol exists at a time
## Type Conversions
- `.to_s` to string
- `.to_sym` to symbol
- `.intern` can also be used to initialize a string to a symbol such as below
  - `"hello".intern ==> :hello`
---
# Other commands
## `case` - decides what action to take based on user input 
```ruby
case language
  when "one"
    puts "x"
  when "y"
    puts "y"
  else 
    puts "z"
end
```
- `.nil?` method returns `true` if object called is `nil` but returns `false` otherwise

Can also be written in shorthand like below:
```ruby
case language
  when "one" then puts 1
  when "two" then puts 2
  when "three" then puts 3
```
# if Statements
```ruby
if condition
  #code here
end
```
Alternatively, a simpler way to use if statements
```ruby
expression if boolean (does not require an end)

puts "this is an example" if true
```
## Ternary conditional statements
- boolean ? do this if true: do this if false

Example
```ruby
puts 3 < 4 ? "3 is less than 4!" : "3 is not less than 4."
```

# Conditional assignments
Used when you want to assign a value to a variable but are not sure if it has already been assigned

` || = `

# Concatenation operator
```ruby
<< to add to an array or to a string such as below
[1,2,3] << 4
# ==> [1,2,3,4]
"Mark " << "Martinez"
# ==> "Mark Martinez"
```
`push` can also be used such as below:
```ruby
alphabet = ["a", "b"]
alphabet.push["c"]
# ==> ["a", "b", "c"]
```
`+=` can also be used such as below:
```ruby
my_string = "hello "
my_string += "there"
# ==> "hello there"
```
**string interpolation** could also be used such as below:
```ruby
drink = espresso
"I love #{drink}."
# ==> "I love espresso"
```
# `collect` method
Takes a block and applies the expression in the block to every element in an array
# `proc` 
```ruby
cube = Proc.new { |x| x ** 3}
```
This can then be passed to a method such as below:
```ruby
[1,2,3].collect(&cube)
# ==> [1,8,27]
```
Can also be used by using the `.call` method:
```ruby
hi = Proc.new { puts "Hello there"}
hi.call
# ==> "Hello there"
```
# Quick review of `lambdas`, `proc`, and `blocks`
1. A **block** is just a bit of code between do..end or {}. It’s not an object on its own, but it can be passed to methods like .each or .select.
2. A **proc** is a saved block we can use over and over.
3. A **lambda** is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.

