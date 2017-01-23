 #return the number of existing objects
  # open irb
  #> Vehicle.count
  #=>0
  #>Vehicle.new
  #>Vehicle.count
  #1
class Counter
  def add_one
    new_val = Counter.value + 1
    #new_val = 10
    File.open "./tmp/counter.txt", "w" do |counter_file|
      counter_file.write new_val
    end
  end

  def self.value   
    File.open "./tmp/counter.txt", "r" do |counter_file|
      counter_file.each_line {|line|  return line.to_i}
    end    
  end    
end

class Vehicle
  attr_reader :position
  attr_reader :out_of_order


  def initialize
      @position = 'roubaix'
      @out_of_order = false      
      puts "i am finishing initialization my instance"
      Counter.new.add_one
  end   

  def self.new
    puts 'im creating a new vehicle'
    super
  end  
 

  def move (destination)
      puts 'changement de position'
      @position = destination
    
  end  
end

peugeot = Vehicle.new 

puts Counter.value 



#tahiti='tahiti'
# puts (citroen = Vehicle.new).inspect
# citroen.position
# puts citroen.inspect
# citroen.move(tahiti)
