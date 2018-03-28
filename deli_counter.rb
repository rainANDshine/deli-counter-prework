def take_a_number(katz_deli, newCustomer)
  katz_deli << newCustomer
  puts "Welcome, #{newCustomer}. You are number #{katz_deli[-1]} in line."
end

def nowServing(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!";
  else
    name = katz_deli.shift;
    puts "Currently serving #{name}."
  end
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    string = "The line is currently: "
    katz_deli.each_with_index { |name, index|
      string += "#{index+1}. #{name} "
    }
    puts string.pop!
  end
end