mon_hash = {mimi: :Oran,
            youyou: :NADA,
            nini: :NIHEL}

place = mon_hash [:mimi]
author = mon_hash [:youyou]

children = mon_hash [:nini]

puts "made with love @ #{place} by #{author}"
puts  "i love my @ #{children}"


# Exercice la ville de naissance

code_postale = {59000=> :Lille, 
                75000=> :Paris, 
                69000=> :Pasdecalais}

puts "Quel est le CP de ta ville de naissance?"
cp = gets.to_i
ville = code_postale[cp]
puts "ma ville de naissance est #{ville}" 



# Exercice le code postale

code_postale = {lille: 59000, 
               paris: 75000,
               pasdecalais: 69000}

puts "quel est ta ville?"
ville = gets.chomp.to_sym
mon_code = code_postale[ville]
puts "mon cp est #{mon_code}"