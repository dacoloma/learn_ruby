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
