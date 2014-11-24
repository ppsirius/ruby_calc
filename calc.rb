def get_values
  [gets, gets].map{ |n| n.chomp.to_i }
end

puts "Would you like to [add], [multiply], [subtract] or [divide]?"
response = gets.chomp
which = "Which numbers would you like to"

case response.downcase
  
when 'add'
  puts "#{ which } add?"
  operator = :+

when 'subtract'
  puts "#{ which } subtract?"
  operator = :-

when 'multiply'
  puts "#{ which } multiply?"
  operator = :*

when 'divide'
  puts "#{ which } divide?"
  operator = :/

end

answer = get_values.inject(operator)
puts "The answer is #{ answer }"