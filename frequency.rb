#!/urs/bin/ruby -w

hash = {}
hash.default = 0
str = "aabbbcddeac"

str.each_char do |character|
  hash[character] = hash[character] + 1;
end

puts "#{hash}"
