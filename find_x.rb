def find_x(input,x)
  index = 0
  index2 = 0

  unless input[index] == nil
    index += 1
    if index >= x 
      index2 += 1
    end
  end
  puts input[index2]
end

input = gets.chomp.split("").map(&:to_i)
x = gets.chomp.to_i

find_x(input,x)