class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save 
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.print_all
        self.all.collect do |dog|
            puts dog.name
        end  
    end

    def self.clear_all
        self.all.clear
    end

end