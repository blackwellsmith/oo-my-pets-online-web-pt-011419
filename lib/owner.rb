require "pry"
class Owner
  attr_accessor :owner, :name, :pets
  attr_writer
  attr_reader :species
  @@all =[]
  def initialize(owner)
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    @pets 
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)  
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def walk_dogs()
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats()
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end
  def feed_fish()
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
   # binding.pry
    @pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
    pet_array.clear
  end
  end
  
  def list_pets()
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end