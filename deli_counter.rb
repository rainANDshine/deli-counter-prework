function takeANumber(katzDeliLine, newCustomer) {
  katzDeliLine.push(newCustomer);
  totalNumber++;
  return "Welcome, " + newCustomer + ". You are number " + totalNumber + " in line.";
}

function nowServing(katzDeliLine) {
  if (katzDeliLine.length === 0) {
    return "There is nobody waiting to be served!";
  } else {
    var temp = katzDeliLine.shift();
    return "Currently serving " + temp + ".";
  }
}

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