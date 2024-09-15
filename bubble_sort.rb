require "pry-byebug"
def sort(array)
  n = array.length
  loop do 
    swap = false 
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end 
    end
    n -= 1
    break unless swap
  end
  array
end 

p sort([4, 3, 2, 1, 0])
p sort((1..100).to_a.reverse)
