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



require relative  '../loto/lotoavecclass.rb'      #require relative cest la methode avec largument nom du fichier ./loto/lotoavecclass.rb'
                                                  #le requirepour atteindre notre fichier nimporte quel endroit dans ruby

RSpec.describe Loto do    # la class RSpec avec la methode describe pour appele la classe de lobjet Loto
  xit 'gets grids' do     # on a un bloc avec une methode xit pour ignorer le test il reste en attente
    Loto.get_grid
  end

  it 'give a radom flash grid' do #on appelle une methode it dans un bloc 4fois de la classe LOto
    expect(Loto.get_flash).not_to be_nil   #renvoi un nil
    expect(Loto.get_flash).to be_a #Array renvoi un tableau
    expect(Loto.get_flash.size).to              #equal 5 renvoi si le equal lidentification et egal a 5 nombres
    expect(Loto.get_flash).not_to eql Loto.get_flash  #renvoi il faut pas que get flash renvoi le meme resultat
  end

  it 'make a draw' do #on appele une methode it dans un bloc describe do avec une chaine de caratere 'make a draw' 
    loto = Loto.new #instancier la classe Loto.new dans loto
    loto_draw = loto.draw # on appelle la methode loto.draw
    expect(loto).to respond_to :draw 
    expect(loto_draw).not_to be_nil # on test sil renvoi un nil
    expect(loto_draw).to be_a Array #Array renvoi un tableau
    expect(loto_draw.size).to equal 5  #equal 5 renvoi si le equal lidentification et egal a 5 nombres
    expect(loto_draw).to eql loto.draw # on testcest le resultat est egal a tableau  
  end
  it 'validate a grid register this grid' do
     loto = Loto.new instancier une class Loto.new dans loto
     grid = [1,2,3,4,5] # grid variable contien un objet qui un tableau
     validated_grids = loto.validate_grid grid  # validate_grid on lui assigne une methode dinstance 
     expect (validated_grids).to inclued grid   #qui test grid sil est inclue dans validate_grids ou plutot validated grids contien grid
end
  it 'reject grid validation after draw' do           #on test si la grille est rejetée  apres  le tirage 
  
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

