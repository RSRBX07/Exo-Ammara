#Donovan

def throw_dice

result = rand 1..3

if result == 1 

return "igloo"

elsif result == 2

return "bridge"

else

return "pillar"

end

end



def make_action action,animaux,my_coldbridge

case action

when "igloo"

move_animal animals(animaux,"igloo"),"igloo",animaux

when "bridge"

move_animal animals(animaux,"pont"),"pont",animaux

when "pillar"

removepillier my_coldbridge

end


#Ernst

#creation du pont 

coldbridge =[]



# enlever un pilier du tableau

def removepillier my_coldbridge

my_coldbridge.pop

end


#verifier si un pilier est present deux

def presentpilar my_herebridge

my_herebridge.empty?

print "continuez"


end 



#verifier si un pilier est present 

def present my_herebridge

if my_herebridge.empty?

print "you loose"

else

print "continue"

end

end


# annoncer la victoire

def winner animaux

inc_win = 0

animaux.each do |animal,lieu|

if lieu == "igloo"

inc_win += 1

end

end

if inc_win == 4

return true

else 

return false

end

end


end


#fonction de verification de victoire ou defaite 






#Amara

# Définir les animaux dans leur lieux 

animaux ={

ours: "banquise",

lapin: "banquise",

pingouin: "banquise",

renard: "banquise"

} 


def can_move_to_destination animaux,destination

can_move = []

lieux = ["banquise", "pont", "igloo"]

animaux.each do |animal,lieu|

if destination == "pont" && lieu == "banquise"

can_move.push(animal)

elsif destination == "igloo" && lieu == "pont"

can_move.push(animal)

end

end

return can_move

end


# Définir la fonction qui demande à l'utilisateur de choisir un animal

def animals animaux,action

can_move = can_move_to_destination animaux,action

if can_move.empty?

puts "Aucun animal ne peut atteindre la destination #{destination}"

else

puts "Quel animal voulez vous bouger? :"

i = 0

can_move.each do |animal|

i += 1

puts "#{i} = #{animal}"

end 

animal= gets.to_i

case animal

when 1

return :ours

when 2

return :lapin

when 3

return :pingouin

when 4

return :renard 

end 

end

end




#Guillaume

#fonction deplacement animaux

def move_animal animals, destination, animaux

animaux[animals] = destination

end 