# Afficher le tirage de 5 nombres entre 1 et 45

available_balls= (1..45).to_a
#shuffle balls and take 5
picked_balls = available_balls.shuffle.take 5

puts" le tirage du jour est : #{picked_balls.sort}"