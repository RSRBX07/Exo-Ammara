# Resultat d'un tirage d'un d à 6 faces
def roll 
face =[1,2,3,4,5,6]
face_index = rand 6
roll = face[face_index]
return roll
end

puts roll


# resultat d'un d cheated
def roll_cheated cheated_value
   return cheated_value
end

puts roll_cheated 2



#2eme methode
def roll
    1+ rand(6)
end
    puts roll

# 3eme methode
 def roll (cheated_value = nil)
    if cheated_value==nil
        return 1+ rand(6)
    else
        return cheated_value
    end    
end

puts "lancer de de normal"
puts roll

puts "lancer de de pipe"
puts roll 4