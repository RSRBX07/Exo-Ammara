# require './vehicle/vehicle.rb' #./ de require relative represente l'endroit ou se trouve le fichier ou l'endroit require dossier vehicule si non il excute de fichier racine 
# class Plane < Vehicle  
#     #attr_reader :flight
#     @@counter = 0    #creer une variable de classe
    
#     def self.new     # definie la methode de class new qui renvoi un msg que on initialise qui va appele le point new de l'objet si non il renvoi nil
#         puts "Im creating a new Plane in Roubaix" 
#         super
#     end

#     def initialize     # definie une methode intialize personne ne peut l'appele sauf la methode new donc initialize est une methode private
#         @@counter += 1 # le counter variable de classe on incremente cette variable
#         super          # il va chercher les encetres existantes qui porte le meme nom quand on herite (exp les attribus de vehiculerb seront dans plane.rb)
#         @flight = false # on instencier a flight false
#     end

#     def self.count   #definie methode self de classe 
#       puts "We created #{@@counter} planes." # puts une methode qui prend un argument une chaine de caractere dans lequel on a une interpolation #{@@counter} pour recupere la valeur de counter
#     end

#     def flight? # methode d'instance avec ? DONC c prédidate methode qui rtourne une valeur ou sois falsy ou terthy'
#         @flight
#     end

#     def land #methode d'instance land qui attribu la valaeur false 
#         @flight = false #qui retourne false
#     end

#     def take_off #definie la methode takke off
#         @flight = true
#     end

#     def move latitude = 0,longitude = 0,altitude = 0  
#       # methode dinstance move avec l'attribue ou argument datitude avec valeur de defaut 0
#       flight? ? super : false #super va recupere les arguments de latitude 0 et longitude 0 et altitude tous ca pourrai etre lu comme suite
#                                # def move x=0, y=0, z=0
#                                #     return false if !flight?
#                                #     super
#                                # end
#     end

#     private


# end

# a = Plane.new
# b = Plane.new
# p = Plane.new
# puts p.position
# p.take_off
# #Tours = latitude: 47.394144000000004,longitude: 0.6848399999999288
# p.move(-3.2985609,-2.493007)
# puts "Advance to Tours"
# puts p.position
# puts Plane.count

class Plane
    @@all=[]
    def initialize
      @@counter
      @@all.push.self  
    end    
    airbus=Plane.new
    boing=Plane.new
end    
plane.class_variable_gets(:@@all)
plane.class_variable_gets(:@@counter)