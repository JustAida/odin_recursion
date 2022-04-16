def fibs(num)
  fibs_array = []
  0.upto(num - 1) do |n|
    fibs_array << (n <= 1 ? n : fibs_array[-2] + fibs_array[-1])
  end
  fibs_array
end

p fibs(8)
