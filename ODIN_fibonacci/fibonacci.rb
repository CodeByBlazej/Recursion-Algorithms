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

# fibs(8)


def fibs_rec(n, fib=[])
  puts 'jebac'

  if n == 0
    p fib
    0
  elsif n == 1
    1
  else
    fib << n
    fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end

 puts fibs_rec(8)