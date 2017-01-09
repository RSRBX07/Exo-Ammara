# exercice sur les nombres

#calculez le nombres de seconde d'une année

result= 365*24*3600
puts "le resultat est : #{result}"

#calculer mon age en seconde

age= 33*result
puts "l'age est : #{age}"

now = Time.now
birth_time = Time.new "31/05/1975"
age_in_sec = now-birth_time
