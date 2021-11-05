def fibs(num)
  arr = []
  num1 = 0
  num2 = 1
  num3 = 0

  num.times do |item|
    if item == 0
      arr.push(num1)
    elsif item == 1
      arr.push(num2)
    else 
      num3 = num1 + num2
      arr.push(num3)
      num1 = num2
      num2 = num3
    end
  end

  p arr
end

# fibs(8)

def fibs_rec(num)
  return [0] if num == 0
  return [0, 1] if num == 1

  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end

# p fibs_rec(6)