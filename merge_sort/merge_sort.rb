def merge_sort(array)
  return array if array.size < 2

  left_half = merge_sort(array[0..array.size / 2 - 1])
  right_half = merge_sort(array[array.size / 2..])

  sorted_array = []
  left_index = 0
  right_index = 0

  until left_index == left_half.size || right_index == right_half.size
    if left_half[left_index] < right_half[right_index]
      sorted_array.push(left_half[left_index])
      left_index += 1
    else
      sorted_array.push(right_half[right_index])
      right_index += 1
    end
  end

  if left_index > right_index
    sorted_array.concat(right_half[right_index..])
  else
    sorted_array.concat(left_half[left_index..])
  end
  sorted_array
end

array = [22, 31, 96, 84, 21, 200, 1, 29, 489]
p merge_sort(array)
