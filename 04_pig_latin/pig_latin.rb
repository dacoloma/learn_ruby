#write your code here
def translate(str)
    consonne="bcdfghjklmnpqrstvwxz"
    pig = "ay"
    tab,tab2, tab_word=[],[],[]
    tab=str.split
    tab2=tab.map do |value|
        i = 0
        tab_word = value.split("")
        while consonne.include? value[i]
            if value[i+1] == 'u'
                tab_word.rotate!(1)
            end
            tab_word.rotate!(1)
            i += 1
        end
        value=tab_word.join("") + pig
    end
    return str=tab2.join(" ")
end
