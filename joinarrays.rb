#!/urs/bin/ruby -w

arr1 = Array[2,4,6,8,10]
arr2 = Array[1,3,5,7,9,1,13]

all = Array.new

arr1.each(){ |i|
	all.push(i)
}

arr2.each(){ |i|
	all.push(i)
}

puts "#{all}"


#2nd way

all2 = Array.new

for i in (0...arr1.length)
	all2[i] = arr1[i]
end

for i in (0...arr2.length)
	all2[i+arr1.length] = arr2[i]
end

puts "#{all2}"
