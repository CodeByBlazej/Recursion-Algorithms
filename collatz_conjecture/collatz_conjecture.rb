# The Collatz conjecture is applies to positive integers and speculates
# that it is always possible to get "back to 1" if you follow these steps:
# - If n is 1, stop.
# Otherwise, if n is even, repeat this process on n/2.
# Otherwise, if n is odd, repeat this process on 3n + 1.
def collatz(n)
  if n == 1
    puts n
    return
  elsif n.even?
    puts n
    collatz(n / 2)
  elsif n.odd?
    puts n
    collatz(3 * n + 1)
  end
end

collatz(50)