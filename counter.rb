class Counter
  def add_one
      new_val = value + 1
      File.open "./tmp/counter.txt", "w" do |counter_file|
        counter_file.write new_val
      end
  end

  def value
    # counter_file = File.new "./tmp/counter.txt", "r" # je récupére le fichier counter.txt en lecture seule
    # counter_file
    File.open "./tmp/counter.txt", "r" do |counter_file|
      counter_file.each_line{|line|return line.to_i}
    end
  end
end



class Vehicle 
    attr_reader :position
    attr_reader  :out_of_order

                                    #@counter = 0

                                    # def self.new
                                    #     puts "I'm starting creation of a new vehicle"
                                    #     super
                                    #     puts "I finish creation of a new vehicle "
                                    # end 
                                    
                                    # return the number of existing objects (in memory)
                                    # open irb
                                    # Vehicle.count
                                    #  #=>0
                                    # Vehicle.new
                                    # Vehicle.count
                                    #  #=>1 
    def initialize 
      puts "I'm starting initilization my instance of a new vehicle"
      @out_of_order = false
      puts "I finish initilization my instance of a new vehicle"
      Counter.new.add_one
    end
    def self.count 
      Counter.new.value
    end
    def move(destination) 
        @position = destination
        puts " I moving "
    end
  
    def self.counter
      @counter
    end
end