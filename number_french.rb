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
when 4
     "quatre"
when 5
     "cinq"           
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

  


# retour de chaine de caractere du chiffre

def french_number number
     number = ["zero","un","deux","trois","quatre","cinq","six","cept","huit","neuf"][number]
end
puts french_number 6




# retour de chaine de caractere de 9 à 19

def french_number number
     number = ["zero","un","deux","trois","quatre","cinq","six","cept","huit","neuf","dix","onze",
     "douze","treize","quatorze","quinze","seize"],[number]  
      when 17..19
      "dix-"+ french_number (number-10)  
end

puts french_number 15





