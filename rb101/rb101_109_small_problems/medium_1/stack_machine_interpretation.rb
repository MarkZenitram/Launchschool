def minilang(program)
  stack = []
  register_value = 0

  program.split.each do |command|
    case command
    when 'ADD'    then register_value += stack.pop
    when 'DIV'    then register_value /= stack.pop
    when 'MOD'    then register_value %= stack.pop
    when 'MULT'   then register_value *= stack.pop
    when 'POP'    then register_value = stack.pop
    when 'PRINT'  then puts register_value
    when 'PUSH'   then stack.push(register_value)
    when 'SUB'    then register_value -= stack.pop
    else               register_value = command.to_i
    end
  end
end

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
