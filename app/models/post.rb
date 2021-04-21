class Post < ApplicationRecord
    validates :title, presence: true
    validates :photo, presence: true
    validates :content, presence: true
    before_save :censurar 
    
    def censurar
        con = self.content
        palabra_censurada = 'spoiler'
        con_arr = con.split()
        array_censurado = []

        con_arr.each do |word|
            if word == palabra_censurada
                next
            else
                array_censurado.append(word)
                puts("estoy en el if")
            end
        end
        #texto_censurado = array_censurado.join(" ")
        #return texto_censurado
        puts("estoy justo antes del return")
        self.content = array_censurado.join(" ")
        #return array_censurado.join(" ")
    end
        
end
