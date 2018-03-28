def take_a_number(katz_deli, newCustomer)
  katz_deli << newCustomer
  "Welcome, #{newCustomer}. You are number #{katz_deli[-1]} in line."
end

def nowServing(katz_deli)
  if katz_deli.length == 0
    return "There is nobody waiting to be served!";
  } else {
    var temp = katzDeliLine.shift();
    return "Currently serving " + temp + ".";
  }
end

def line(katz_deli)
  string = "The line is currently: "
  
  if katz_deli.length == 0
    "The line is currently empty.";
  else
    katz_deli.each_with_index { |name, index|
      string += "#{index+1}. #{name}"
    }
  end
  string
end