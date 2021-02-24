input = []
ans = 'y'
non_taxable = ["book", "chocolate","chocolates", "pills"]

while ans != 'n' do
  i = gets()
  input.push(i)
  puts "more items in basket?"
  ans = gets()
  ans = ans.chomp
end 

total = 0
tax = 0
flag = 0

input.each do |i|
  flag = 0
  item_tax = 0
  output = i.split()	
  qty = (output[0]).chomp.to_i
  amt = (output[-1]).chomp.to_f
  item_total = qty*amt
  if qty <= 0 || amt <=0.0
    puts "invalid input"
    break
  end
  item_tax += item_total*0.05 if output.include?("imported")
  #puts " item tax1: #{item_tax}"
  output.each do |o|
    #o == "at" ? (print ":") : (print "#{o} ")
    if non_taxable.include?(o)
      flag = 1
      break
    end
  end
  output.pop()
  output.pop
  output.each { |o| print "#{o} "}
  item_tax += item_total*0.1 if flag == 0
  #puts " item tax2: #{item_tax}"
  tax = tax + item_tax 
  tax = (tax).round(2)
  total = total + item_total + item_tax
  total = total.round(2)
  print ": #{(item_total+item_tax).round(2)}"
  puts
end 

puts "Sales Taxes: #{tax}"
puts "Total: #{total}"

