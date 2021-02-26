#!/urs/bin/ruby -w

arr1 = [2, 4, 6, 8, 10]
arr2 = [1, 3, 5, 7, 9, 1, 13]

all = []

arr1.each do |i|
  all.push(i)
end

arr2.each do |i|
  all.push(i)
end

puts "#{all}"

#2nd way

all2 = []

for i in (0...arr1.length)
  all2[i] = arr1[i]
end

for i in (0...arr2.length)
  all2[i + arr1.length] = arr2[i]
end

puts "#{all2}"
