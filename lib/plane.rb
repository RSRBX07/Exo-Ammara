require_relative './vehicle.rb'

class Plane < Vehicle
   attr_reader :flying
   
  def initialize
    super
    @flying = false
  end

  def flying?
    @flying 
  end  
  
  def take_off
    @flying = true
    puts 'i take off '
  end
    
  def land
   @flying = false
   puts 'i land'
  end 

  def open_doors
    return if flaying? ==true 
    puts "portes ouvertes"
  end
  boing = Plane.mon_new ou # airbus=mon_new
end  
 plane= Plane.new
 puts p.inspect
 puts p.take_off.inspect


