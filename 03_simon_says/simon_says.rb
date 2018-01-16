#write your code here
def echo(str)
    return "#{str}"
end

def shout(str)
    return str.upcase
end

def repeat(str, n=2)
    return ("#{str} "* n).strip#* n
end

def start_of_word(str,n)
    return str[0...n]
end

def first_word(str)
    return str.split[0]
end

def titleize(str)
    title = []
    title = str.split.each{|s| s.capitalize!}
    title[1...title.length].select{|s| ["And","Of","The","Over"].include? s}.each{|s| s.downcase!}
    title.join(" ")
end
