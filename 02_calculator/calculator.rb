#write your code here
def add(x,y)
    return x+y
end

def subtract(x,y)
    return x-y
end

def sum(lst)
    return lst.reduce(:+) if lst.length > 0 else 0
end

def multiply(lst)
    return lst.reduce(1,  :*) if lst.length > 0 else 0
end

def power(x,y)
    return x ** y
end

def factorial(n)
    return (1..n).reduce(1, :*)
end
