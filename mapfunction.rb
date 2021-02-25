#!/urs/bin/ruby -w

arr = Array[1, 2, 3, 4, 5]

arr = arr.map(){ |num| num = num*2; }

puts "#{arr}"
