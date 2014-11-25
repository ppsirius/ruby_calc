def get_values
  puts "Write 2 numbers"
  $val1 = gets.chomp.to_i
  $val2 = gets.chomp.to_i
end

def add
  $val1 + $val2
end

def subtract
  $val1 - $val2
end

def multiply
  $val1 * $val2
end

def divide
  $val1 / $val2
end

get_values

puts "Would you like to [add], [multiply], [subtract] or [divide]?"
response = gets.chomp

answer = send(response)
puts "The answer is #{ answer }"