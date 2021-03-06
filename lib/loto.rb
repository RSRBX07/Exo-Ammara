# Afficher le tirage de 5 nombres entre 1 et 45

#available_balls= (1..45).to_a
#shuffle balls and take 5
#picked_balls = available_balls.shuffle.take 5

#puts" le tirage du jour est : #{picked_balls.sort}"


#Affichage de la cagnote
#Entre 100 et 500 euros
# le vendredi 13, la cagnote est de 2millions
is_vendredi_13 = true
if is_vendredi_13
   cagnote = 2000000  
else
   cagnote = 100000
end    
puts "la cagnote du jour est de #{cagnote}"

# Afficher si c'est gagner ou perdu
def demande_de_grille                               #definir une methode demande de grille
    puts "choisir 5 nombres de 1 à 45"
    grid = gets
    return grid
end

def input_refinement raw_grid                       # retraitement de la saisie

    
    grille = raw_grid.chomp                          #grille est une chaine de caractere string : grille.class
    grille = grille.split " "                        # pour découper
    refined_grid=[]
    grille. each do |boule|                          # le each pour parcourir le tableau element par element (boule) et on le pousse
        refined_grid.push boule.to_i
    end
    return refined_grid
 end

 grille = demande_de_grille

 refined =input_refinement grille


 def make_draw                                      #methode de tirage appele make_draw   # Afficher le tirage de 5 nombres entre 1 et 45
    tirage = (1..45).to_a.shuffle.take 5            # tirage est une instance d un tableau 
    #cheat
    tirage = [1, 2, 3, 4, 5]
    return tirage
 end
 draw = make_draw 


#sorting grid and draw
sorted_grid =refined.sort
sorted_draw =draw.sort                           


 # comaparaison de la grille et le  tirage

 def show_result sorted_grid, sorted_draw
  # comparons la grille et le tirage
  winner = (sorted_grid == sorted_draw)
  if winner
    puts "Vous avez gagne"
  else
    puts "Vous avez perdu"
  end
end
 

show_result sorted_grid, sorted_draw


def draw_done? #si le tirage est fait  ?
  !@picked_balls.to_a.empty? # si il y'a des balls ou pas pour voir si le tirage est fait ou pas
end  


#enregistrer une grille pour le loto courant
def validate_grid grid

  # verifier que le tirage n'a pas encore eu lieu 
  @saved_grids ||=[]
  
# TODO check draw isnot yet done
  return @saved_grids if draw_done?
  @saved_grids.push grid 
end  