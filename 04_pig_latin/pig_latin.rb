#write your code here
def translate(str)
    consonne="bcdfghjklmnpqrstvwxz"
    punctuation = ".,?:;!"
    pig = "ay"

    tab,tab2, tab_word,tab_punc=[],[],[],[]

    #decomposer la phrase en array de string
    tab=str.split


    tab2=tab.map do |value| #itération sur chaque mots de l'array
        i = 0
        flag = false    #indicateur qui passe à true si le mots est "capitalized"

        if value == value.capitalize
            value.downcase!
            flag = true
        else
            flag = false
        end

        tab_word = value.split("") #spliter le mot en array de caractere

        #stocker dans le tab_punc toute les ponctuations en fin de mot en les supprimant du tab_word.
        #Ex: [h,e,l,l,o,!]  =>  [h,e,l,l,o]
        while punctuation.include? tab_word[tab_word.length-1]
            tab_punc << tab_word.delete_at(tab_word.length - 1)
        end

        while consonne.include? value[i] 
            if value[i+1] == 'u'
                tab_word.rotate!(1)
            end
            tab_word.rotate!(1)
            i += 1
        end

        #push le string "ay" puis la ponctuation
        tab_word << pig  << tab_punc

        #transforme l'array en string
        value=tab_word.join("")

        if flag
            value.capitalize!
        else
            value
        end

    end
    return str=tab2.join(" ")
end


puts translate("square!")
