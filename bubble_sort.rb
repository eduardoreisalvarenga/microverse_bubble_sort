def bubble_sort(argument)
  loop do
    changed = false
    for i in 0...array.size - 1
      if argument[i + 1] < argument[i]
        argument[i], argument[i+1] = argument[i + 1], argument[i]
        changed = true
      end
    end
    return array if changed == false
  end
end

def bubble_sort_by(arr)
  yield (arr)
  my_size = arr.length
  swapped = true
  while swapped
    swapped = false
    (arr.length - 1).times do |i|
      if arr[i] < arr[i+1]
        arr[i],arr[i+1]= arr[i+1],arr[i]
        swapped = true
      end
    end
  end
  print arr
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
