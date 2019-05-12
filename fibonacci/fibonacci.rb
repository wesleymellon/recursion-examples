def fibs(n)
  fib_arr = [0, 1]
  (n-2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end

  fib_arr
end

def fibs_rec(n, sequence = [0,1])
  if n == 0 
    return []
  elsif n == 1
    return[0] 
  elsif n == 2
    return sequence
  else 
    sequence << sequence[-1] + sequence[-2]
    fibs_rec(n - 1, sequence)
  end
end
