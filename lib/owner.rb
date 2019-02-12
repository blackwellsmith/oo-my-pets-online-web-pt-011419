class Owner
  attr_accessor :owner, :name, :pets
  attr_writer
  attr_reader :species
  @@all =[]
  def initialize(owner)
    @@pets = {:fishes => [], :dogs => [], :cats => []}
    @name = name
    @owner = owner
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    a = @@all
    a.count
  end
  def self.reset_all
    a = @@all
    a.clear
  end
  def species()
    @species = "human"
  end
  def say_species()
    "I am a human."
  end
  def name()
    @name
  end
  def pets()
    @@pets 
  end
  def buy_fish(name)
    @@pets[:fishes] << Fish.new(name)  
  end
  def buy_dog(name)
    @@pets[:dogs] << 
  end
  def buy_cat
end