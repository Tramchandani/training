#!/urs/bin/ruby -w

require 'csv'

table = CSV.parse(File.read("sample.csv"), headers: true)

puts "#{table}"

CSV.open("sample.csv", "a+") do |csv|
  csv << [6, :white]
end

table2 = CSV.parse(File.read("sample.csv"), headers: true)
puts "#{table2}"
puts "end of file"
