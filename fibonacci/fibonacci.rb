def fibs(n)
  fib_arr = [0, 1]
  (n-2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end

  fib_arr
end


def foo(n)
  if n == 0
    return 0
  elsif
    n == 1
    return 1
  else
    return fibs_rec(n - 1) + fibs_rec(n - 2)
  end


end

def fibs_rec(n, sequence = [])
  if n == 0 
    return sequence << 0
  elsif n == 1
    return sequence << 1
  else 
    return sequence << fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end

p fibs_rec(5)