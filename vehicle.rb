class Vehicle
  attr_reader :position
  attr_reader :out_of_order

  def self.mon_new
    puts 'im creating a new vehicle'
    Object.new
  end  


  def initialize
    @position = 'roubaix'
    @out_of_order = false
  end   

  def move (destination)
    puts 'changement de position'
    @position = destination
   
  end
  peugeot = Vehicle.mon_new  
end


#tahiti='tahiti'
# puts (citroen = Vehicle.new).inspect
# citroen.position
# puts citroen.inspect
# citroen.move(tahiti)
