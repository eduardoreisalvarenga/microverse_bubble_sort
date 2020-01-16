require "pry"
def bubble_sort(array)
  loop do
    changed = false
    for i in 0...array.size - 1
      if array[i + 1] < array[i]
        array[i], array[i+1] = array[i + 1], array[i]
        changed = true
      end
    end
    return array if changed == false
  end
end

binding.pry 
