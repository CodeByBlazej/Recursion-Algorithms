# Fibonacci loop
def fibs(n)
  fib = [0, 1]

  if n == 1
    puts 1
  elsif n == 2
    puts fib[0] + fib[1]
  elsif n > 2
    for i in 2...n
      fib << fib[i - 1] + fib[i - 2]
    end
  end
  p fib
end

fibs(8)

# Fibonacci recursion example 1
def fibs_rec(n)
return [0] if n.eql?(0)
return[0, 1] if n.eql?(1)

results = fibs_rec(n - 1)
results << results[-1] + results[-2]
results[0...n]
end

p fibs_rec(8)

# Fibonacci recursion example 2
def fibs_rec2(n)
  if n == 0
    [0]
  elsif n == 1
    [0, 1]
  else
    fib = fibs_rec2(n - 1)
    fib << fib[-1] + fib[-2]
  end
end

p fibs_rec2(8)

