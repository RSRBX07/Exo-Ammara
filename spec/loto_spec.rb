# test de dice.rb
# require './dice.rb'

# my_dice = Dice.new

# puts "lancer de de normal"
# puts my_dice.roll

# puts "lancer de de pipe"
# puts my_dice.roll 4

# test de loto
#my_loto = Loto.new
#my_grid = Loto.get_grid
#my_loto.has_winner?
#my_loto.validate_grid Loto.get_grid



require './loto/lotoavecclass.rb'
RSpec.describe Loto do
  it 'gets grids' do
    Loto.get_grid
  end
  it'give a radom flash grid'do
    expect(Loto.get_flash).not_to be_nil
    expect(Loto.get_flash).to be_a Array
    expect(Loto.get_flash).to equal 5
    expect(Loto.get_flash).to = eql Loto.get_flash 
end  
  it'make a draw'do
    loto = Loto.new
    loto_draw = loto.draw
    expect(loto_draw).respond_to:draw
    expect(loto_draw).not_to be_nil
    expect(loto_draw).to be_a Array
    expect(loto_draw).to equal 5
    expect(loto_draw).to = eql Loto.draw

 end
  it 'validate a grid registre this grid' do
   loto = Loto.new
   grid = [1,2,3,4,5]
   validate_grid = loto.validate_grid grid
   expect (validate_grid).to include grid
  
  end  
 end


#loto_du_samedi = Loto.new
#2.times {loto_du_samedi.validate_grid Loto.get_flash}

#.each { |grid| loto_du_samedi.check_grid grid }

#loto_du_lundi = Loto.new
#loto_du_lundi.validate_grid Loto.get_flash
#loto_du_lundi.check_grid(grid)
#if loto_du_lundi.has_winner?
 # puts "Someone win"
#else
 # puts "nobody win"
#end

# pour faire un tirage avec draw
#loto_du_lundi.draw
#puts loto_du_lundi.picked_balls


#require'./number_french_class.rb'
#fix_number= Number.french_number 26
#puts fix_number

