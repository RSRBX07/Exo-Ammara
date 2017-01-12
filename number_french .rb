# rcrire une methode 
#qui prend une instance de fixnum en argumenrt (accepte de 0 a 9)
#qui retour la chine de caractere du chiffre ecrit en toute lettres

def french_number number
    case number
    when 0
         "zero"
    when 1
        "un"
    when 2
        "deux"
     when 3
         "trois"
    when 6             
          "six"
    when 7
        "sept"
     when 8
         "huit"
     when 9
         "neuf"
      else
          nil
      end                      
end
  
  puts french_number 8
