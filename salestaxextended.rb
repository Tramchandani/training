module Mod

  def Mod.roundoff(num)
    num.round(2)
  end

  def Mod.total(a, b, c = 0)
    a+b+c
  end

end

class Sales
  include Mod
  @@non_taxable = ["book", "chocolate","chocolates", "pills"]

  def initialize
    @input = []
    @total = 0
    @tax = 0
  end

  def add(item)
    #puts item
    @input.push(item)
  end

  def calculate
    @input.each do |i|
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
      output.each do |o|
        if @@non_taxable.include?(o)
          flag = 1
          break
        end
      end
      output.pop()
      output.pop
      output.each { |o| print "#{o} "}
      item_tax += item_total*0.1 if flag == 0
      @tax = Mod.total(@tax ,item_tax )
      @tax = Mod.roundoff(@tax)
      @total = Mod.total(@total, item_total, item_tax)
      @total = Mod.roundoff(@total)
      print ": #{(item_total+item_tax).round(2)}"
      puts
    end 
  end

  def print_result
   puts "Sales Taxes: #{@tax}"
   puts "Total: #{@total}"
  end
end


  s = Sales.new 
  ans = 'y'
  while ans != 'n' do
    i = gets()
    s.add(i)
    puts "more items in basket?"
    ans = gets()
    ans = ans.chomp
  end 
  s.calculate
  s.print_result

