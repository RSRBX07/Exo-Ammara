#require './dice.rb'

 #my_dice = Dice.new


#puts "lancer de de normal"
#puts my_dice.roll

#puts "lancer de de pipe"
#puts my_dice.roll 4


#test de loto

require './loto.rb'

 my_loto = Loto.new
 grid=loto.get_grid
 
 loto_du_samed= Loto.new
 2.times {loto_du_samedi.validate_grid Loto.get_grid}

 grid.each { |grid| loto_du_samed.check_grid grid}
 loto_du_lundi=Loto.new
 loto_du_lundi.validate_grid Loto.get_grid
 loto_du_lundi.check_grid(grid)