def fibs(num)
  num_array = []
  0.upto(num - 1) do |n|
    num_array << (n <= 1 ? n : num_array[-2] + num_array[-1])
  end
  num_array
end

p fibs(8)
