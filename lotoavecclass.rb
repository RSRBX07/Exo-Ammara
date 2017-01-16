require 'date'        # pour importer le fichier
class Loto            # 

  def self.get_grid # on définit une méthode self.get_grid de classe : Loto, pour créer la grille = grid
    grid = []
    5.times do  # objet c'est 5 la methode .times pour refaire la methode 5fois'
      input = gets.to_i 
      grid << input # << = push : pour ajouter dans la grille ce qui a été tapé clavier, grid c'est la variable local que la methode que comporte le tableau'
    end
    grid #pour retourner grid pour revoyer la methode puts qui est nil 
    puts "votre grille est : #{grid}" 
  end

  def self.get_flash # flash : methode qui nous donne un tableau de 5 premiers chiffres allant de 1 à 45
    (1..45).to_a.shuffle.take 5 #un range notre methode to_a convertie par array ya lexecution de shuffle de melange q
  end

  def has_winner? #methode de class 
    #comprer tous les bulletins valides avec la grille gagnante
    sorted_draw = draw.sort # on instancier la variable local draw.sort dans sorted_draw une methode de rangement par l mot sort
    @saved_grids.each do |grid|# variable dinstance applique une methode each avec le paramettre grid cree pour la boucle each
      sorted_grid = grid.sort # rangement du tableau
      sorted_grid == sorted_draw #comparaison sorted_grid et sorted_draw sa veut dire true ou false == 
    end
  end

  # enregistre une grille
  # pour le loto courant
  def validate_grid grid
    @saved_grids ||= []
    @saved_grids.push grid
  end 
  # demander une grille de jeu

  # affichage du montant de la cagnote
  # entre 100 et 500.000 Euros
  # le vendredi 13, la cagnote est de 2 millions
  def vendredi_13?
    Date.today.day == 13 and Date.today.friday?
  end

  

  def prize
    cagnote = if vendredi_13?
      2_000_000
    else
      100_000
    end
    puts "Le montant de la cagnote du jour est de #{cagnote}"
    cagnote
  end

  def draw
    available_balls = (1..45).to_a
    # shuffle balls and take 5
    @picked_balls ||= available_balls.shuffle.take(5)

    puts "Le tirage du jour est : #{@picked_balls.sort}" 
    @picked_balls
  end

  def check_grid grid
    # afficher si gagne ou perdu
    if grid.sort ==
       draw.sort
      puts "You win !"
    else
      puts "You loose !"
    end
  end
  
end