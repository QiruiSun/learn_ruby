def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(n)
  if n == []
    0
  else
  n.inject { |sum, n| sum + n}
  end
end

def multiply(n)
  if n == []
    0
  else
    n.inject { |sum, n| sum * n}
  end
end

def factorial(n)
  sum = 1
  if n == 0
    1
  elsif
    until n == 1
      sum *= n
      n -= 1
    end
  end
  sum
end
# def sum(n)
#   add = 0
#   n.each { |x| add += x }
# end
