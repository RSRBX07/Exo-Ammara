require_relative './vehicle.rb'

class Firetruck < Vehicle
   attr_reader :driving

  def initialize
          @out_of_order = false      
          puts "i am finishing initialization my instance"
          Counter.new.add_one
  end   

    def self.new
      puts 'im creating a new firtruck'
      super
    end     
puts Counter.value 
end    

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
