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

p fib(6)
