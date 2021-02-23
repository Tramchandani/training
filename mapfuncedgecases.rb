#!/urs/bin/ruby -w

arr = Array[1,2,3,4,'a',"abc"]

arr = arr.map(){ |x|
	if x.is_a?(Integer)
		x = x*2
	else
		x
	end
}

puts "#{arr}"
