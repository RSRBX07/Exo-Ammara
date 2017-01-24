# Exercice sur les nombres

#Calculez le nombres de seconde d'une année

result= 365*24*3600
puts "le resultat est : #{result}"

#Calculer mon age en seconde

age= 33*result
puts "l'age est : #{age}"


# Resultat d'un tirage d'un d à 6 faces

face =[1,2,3,4,5,6]
roll = face.shuffle
puts roll

# Resultat d'un tirage d'un d à 6 faces
roll = rand 6
puts roll

# Resultat d'un tirage d'un d à 6 faces
face =[1,2,3,4,5,6]
face_index = rand 6
roll = face[face_index]
puts roll