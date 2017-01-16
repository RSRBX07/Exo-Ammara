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

def french_number digit
     ["zero","un","deux","trois","quatre","cinq","six","cept","huit","neuf"][digit]                   #[digit] c'est mon index'
 end
puts "saisir un chiffre entre 0 et 9"
digit=gets.chomp.to_i
puts french_number digit






# retour de chaine de caractere de 9 à 19

def  french_number1 number
  if number.class != Fixnum #fixnum est une class pour verifier que mon argument
    return
  end

  case number # mon switch case sur une valeur number
  when 0..16 # je rentre ds ce cas

      ["zero","un","deux","trois","quatre","cinq","six","cept","huit","neuf","dix","onze",
      "douze","treize","quatorze","quinze","seize"][number]
       break
  when 17..19 # j'appelle ma methode french_number' en utilisant reculsivité
        "dix-" + french_number(number-10)
       break
  when 20..29 # des que jarrive à 20 j'appelle ma methode en enlevant 20
       "vingt-" + french_number(number-20)
        break
  else
        "quarante-deux"              
  end

end

puts french_number 15


