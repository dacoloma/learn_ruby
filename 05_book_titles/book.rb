class Book
# write your code here
    attr_accessor :title

    def title
        words = @title.split.map!{|x| x.capitalize}
        words[1...words.length].select{|s| ["And","Of","The","Over","A","An","In"].include? s}.each{|s| s.downcase!}
        @title = words.join(' ')

    end


end
