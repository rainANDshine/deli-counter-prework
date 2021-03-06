def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    string = "The line is currently: "
    katz_deli.each_with_index { |name, index|
      string += "#{index+1}. #{name} "
    }
    puts string.chop!
  end
end

def take_a_number(katz_deli, newCustomer)
  katz_deli << newCustomer
  puts "Welcome, #{newCustomer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.shift;
    puts "Currently serving #{name}."
  end
end