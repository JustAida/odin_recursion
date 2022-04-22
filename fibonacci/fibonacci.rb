def fibs(num)
  fibs_array = []
  0.upto(num - 1) do |n|
    fibs_array << (n < 2 ? n : fibs_array[-2] + fibs_array[-1])
  end
  fibs_array
end

p fibs(8)

def fibs_rec(num, array = [])
  return array << 1 - num if num < 2

  array << fibs_rec(num - 1, array)[-1] + fibs_rec(num - 2)[-1]
end

p fibs_rec(8)
