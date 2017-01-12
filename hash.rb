mon_hash = {6=>"Oran", 23=>"NADA", 11=>"NIHEL"}

place = mon_hash [6]
author = mon_hash [23]

children = mon_hash [11]

puts "made with love @ #{place} by #{author}"
puts  "i love my @ #{children}"


# Exercice la ville de naissance

code_postale = {59000=>"Lille" ,75000=>"Paris", 69000=>"Pas de calais"}

puts "Quel est le CP de ta ville de naissance?"
cp = gets.to_i
ville = code_postale[cp]
puts "ma ville de naissance est #{ville}" 



# Exercice le code postale

code_postale = {"lille"=>59000, "paris"=> 75000, "pas de calais" => 69000}

puts "quel est ta ville?"
ville = gets.chomp
mon_code = code_postale[ville]
puts "mon cp est #{mon_code}"