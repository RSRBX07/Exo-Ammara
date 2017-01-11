# Resultat d'un tirage d'un d à 6 faces
def roll 
face =[1,2,3,4,5,6]
face_index = rand 6
roll = face[face_index]
return roll
end

puts roll