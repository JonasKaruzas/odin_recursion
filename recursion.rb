def factorial(n)
  if n == 1
    1
  else 
    factorial(n-1) * n
  end
end

# p factorial(10)

def palindrome(word)
  false if word.length.even?

  if word[0] == word[-1] && word.length >1
    palindrome(word[1..-2])
    true
  else
    false
  end
end

# p palindrome("racecar")

def bottles(n)
  if n == 0
    puts 'no more beer on the wall'
    return
  end
  puts "#{n} bottles of beer on the wall"
  bottles(n - 1)
end

# bottles(10)

def fib(n)
  return 0 if n == 0
  return 1 if n == 1

  fib(n - 1) + fib(n - 2)
end

# p fib(6)

def flatten(arr, result = [])
  arr.each do |item|
    if item.is_a?(Array)
      flatten(item, result)
    else
      result.push(item)
    end
  end
  result
end

# p flatten([1, [2], 3, 4])


def to_roman(num, result = "")
  roman_mapping = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  if num.digits.length == 4
    result += roman_mapping[1000]
  end
  result
end

p to_roman(1555)