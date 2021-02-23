#!/urs/bin/ruby -w

hash = Hash.new
str = String.new("aabbbcddeac")

str.each_char(){ |c|
	if hash.has_key?(c)
		hash[c] = hash[c]+1;
	else
		hash[c] = 1;
	end
}

puts "#{hash}"
