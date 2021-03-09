
def reverse(str)
  num = str.length 
  last = num - 1
  index = 0
  i = 1
  answer = 0
  
  for i in 1..(num / 2)
    tmp = str[index]
    str[index] = str[last]
    str[last] = tmp
    index += 1
    last -=1 
  end

  
  str.each do |s|
    if answer == 0
      answer = s
    else
     answer = answer + s
    end
  end
  puts answer
end


input = gets.chomp.split("")

reverse(input)

