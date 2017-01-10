# Afficher le tirage de 5 nombres entre 1 et 45

available_balls= (1..45).to_a
#shuffle balls and take 5
picked_balls = available_balls.shuffle.take 5

puts" le tirage du jour est : #{picked_balls.sort}"



#Affichage de la cagnote
#Entre 100 et 500 euros
# le vendredi 13, la cagnote est de 2millions
is_vendredi_13 = true
if is_vendredi_13
   cagnote = 2.000.000  
else
   cagnote = 100.000
end    
puts "la cagnote du jour est de #{cagnote}"