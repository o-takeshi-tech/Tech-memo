def bubble_sort(array)
  length = array.length
  (1..length).each do |i|
    (1..(length - 1)).each do |jx|
      jy = jx  - 1
      if array[jy] > array[jx]
        tmp = array[jy]
        array[jy] = array[jx]
        array[jx] = tmp
      end
    end
  end
  return array
end

input = gets.chomp.split(" ").map(&:to_i)

answer = bubble_sort(input)

puts answer