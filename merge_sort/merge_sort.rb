require "pry-byebug"

def merge_sort(array)
  return array if array.size < 2

  array_size = array.size
  left_half = merge_sort(array[0..array_size / 2 - 1])
  right_half = merge_sort(array[array_size / 2..array_size - 1])

  sorted_array = []
  left_index = 0
  right_index = 0

  until sorted_array.size == array_size
    if left_half[left_index].nil? 
      sorted_array.concat(right_half[right_index..])
      break
    elsif right_half[right_index].nil?
      sorted_array.concat(left_half[left_index..])
      break
    else
      if left_half[left_index] < right_half[right_index]
        sorted_array.push(left_half[left_index])
        left_index += 1
      else
        sorted_array.push(right_half[right_index])
        right_index += 1
      end
    end
  end
  sorted_array
end

# binding.pry

p merge_sort([4, 8, 6, 2, 1, 7, 5, 3])
