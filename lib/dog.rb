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

  def self.clear_all
    @@all.clear
  end

  def self.print_all
    self.all.map { |n| puts n.name }.join("\n")
  end

  def save
   self.class.all << self
  end

  def name
    @name
  end
end

# create dog instance
dog = Dog.new('Snoopy')
Dog.clear_all


# create new dogs to add to @@all[]
pluto = Dog.new('Pluto')
fido = Dog.new('Fido')
maddy = Dog.new('Maddy')

# testing def save method
Dog.clear_all
pluto.save
maddy.save