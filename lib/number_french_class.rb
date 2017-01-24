# rcrire une methode 
#qui prend une instance de fixnum en argumenrt (accepte de 0 a 9)
#qui retour la chine de caractere du chiffre ecrit en toute lettres
class Fixnum

  def french_number number
   case number # mon switch case sur une valeur number
      when 0..16 # je rentre ds ce cas
          ["zero","un","deux","trois","quatre","cinq","six","cept","huit","neuf","dix","onze",
          "douze","treize","quatorze","quinze","seize"][number]
      when 17..19 # j'appelle ma methode french_number' en utilisant reculsivité
            "dix-" + french_number(number-10)
      when 20..29 # des que jarrive à 20 j'appelle ma methode en enlevant 20
          "vingt-" + french_number(number-20)
      else
            "quarante-deux"              
      end          
  end
end

