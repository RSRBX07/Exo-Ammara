dices_values =[rand (1..6),rand (1..6)]
puts dices_values
case dices_values[0]+ dices_values
#si somme =3gangne
when 3 
puts "gagne"
# si somme= 12 rejouer
when 12
puts "rejouer"
# si non perdu
else
puts "perdu"
end