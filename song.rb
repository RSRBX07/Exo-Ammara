# Ecrire le texte de la chanson
=begin
Ma poul' n'a plus qu' vingt-neuf poussins, 
Ma poul' n'a plus qu' vingt-neuf poussins,
Elle en avait trente.
Allongeons la jambe,
Allongeons la jambe, la jambe
Car la route est longue.
Allongeons la jambe, la jambe
Car la route est longue.
=end
iterations=(0..29).to_a.reverse
iterations.each do |i|
    if i > 1
        (1..2).each { puts "Ma poul' n'a plus qu' #{i} poussins" }
    elsif i == 1
        (1..2).each { puts "Ma poul' n'a plus qu'un seul poussin" }
    else
        (1..2).each { puts "Ma poul' n'a plus aucun poussin" }
    end
    puts "Elle en avait trente"
    puts "Allongeons la jambe,"
    (1..2).each do
        puts "Allongeons la jambe, la jambe"
        puts "Car la route est longue."    
    end
    puts
end