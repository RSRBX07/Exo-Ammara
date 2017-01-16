require 'date'        # pour importer le fichier
class Loto             

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
  def validate_grid grid # methode d'instance validate_grid qui prend grid et qui renvoie 
       
    @saved_grids ||= []  # on instancier une valeur d'instance pck ya @ et qui est un tableau ou un tableau  vide
    @saved_grids.push grid # met les information en tableau on utilise une methode push dinstance qui renvoie grid qui ds le tb qui sont saved_grid
  end 
  # demander une grille de jeu

  # affichage du montant de la cagnote
  # entre 100 et 500.000 Euros
  # le vendredi 13, la cagnote est de 2 millions
  def vendredi_13? #methode dinstance
    Date.today.day == 13 and Date.today.friday? # on appelle methode today qui renvoie lobjet  date et on compare test le jour par and=&&  
  end

  

  def prize
    cagnote = if vendredi_13? #tester la methode si true cagnote=200 000 si non100 000
      2_000_000
    else
      100_000
    end
    puts "Le montant de la cagnote du jour est de #{cagnote}"
    cagnote
  end

  def draw
    available_balls = (1..45).to_a #methode dinstance draw on utiliseun range pour definir un tableau
    # shuffle balls and take 5
    @picked_balls ||= available_balls.shuffle.take(5)  

    puts "Le tirage du jour est : #{@picked_balls.sort}" #l'affichage du tirage renvoie nil et affiche l'affichage @ picked_balls '
    @picked_balls
  end

  def check_grid grid #methode qui prend  argument grid
    # afficher si gagne ou perdu
    if grid.sort == draw.sort #on a des instances de tableau qu on va comparer  
       puts "You win !" # puts renvois derniere expresion évaluer cest le if ou le you win soit you loose mais renvois le nil
       return true 
    else
       puts "You loose !"
       return false
    end
  end
  
end