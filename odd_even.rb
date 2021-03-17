# num = gets.chomp.to_i

# input = []
# num.times do 
#     input << gets.chomp
# end

# input.each do |str|
#     odd, even = (input.split(//) + [""] * 3).each_slice(2).to_a.then { |h, *t| h.zip(*t).map(&:join) }
#     puts "#{even.join} #{odd.join}"
# end

puts "何行入力するか、数字で入力してください"
number_of_lines = gets.to_i

if number_of_lines <= 0
  puts "(#{number_of_lines})は不正な数字です 終了します"
  return
end

puts "文字列を入力してください"
lines = number_of_lines.times.collect{ gets.strip }

converteds = lines.collect do |line|
  grouped = line.chars.group_by.with_index{|_, i| i % 2 == 0}
  odds = grouped[false]
  evens = grouped[true]

  [evens.join, odds.join].join(" ")
end

converteds.each{|x| puts x }