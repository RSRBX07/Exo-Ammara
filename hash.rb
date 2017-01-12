mon_hash = {6=>"Oran", 23=>"NADA", 11=>"NIHEL"}

place = mon_hash [6]
author = mon_hash [23]

children = mon_hash [11]

puts "made with love @ #{place} by #{author}"
puts  "i love my @ #{children}"



code_postale = {59000=>"Lille" ,75000=>"Paris", 69000=>"Pas de calais"}



puts "Quel est le CP de ta ville de naissance?"
cp = gets.to_i
ville = code_postale[cp]
puts "ma ville de naissance est #{ville}" 