#!/urs/bin/ruby -w

hash = {}
str = String.new("aabbbcddeac")

str.each_char do |character|
  if hash.has_key?(character)
    hash[character] = hash[character] + 1;
  else
    hash[character] = 1;
  end
end

puts "#{hash}"
