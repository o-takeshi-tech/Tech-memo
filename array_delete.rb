array = ["","","a","b",1,"",3,"","s"]

new_array = []

array.map do |str|
  if str != ""
    new_array << str
  end
end

puts new_array