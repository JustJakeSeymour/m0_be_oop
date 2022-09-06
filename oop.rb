# Write a class called Unicorn
class Unicorn
  def initialize(name)
    # it should have a dynamic name attribute
    @name = name
    # it should have a color attribute, that is silver by default
    @color = "silver"
  end

  # it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
  def say()
    print "What does #{@name} say?"
    words = gets
    print "#{@name} says, *~*#{words}."
  end
end

unicorn1 = Unicorn.new("Sparkle")
unicorn2 = Unicorn.new("Periwinkle")

unicorn1.say

unicorn2.say

#  Write a class called Vampire
class Vampire
  def initialize(name)
    #  it should have a dynamic name attribute
    @name = name
    #  it should have a pet attribute, that is a bat, by default
    #  BUT it could be dynamic if info is passed in initially
    @pet = "bat"
    #  it should have a thirsty attribute, that is true by default
    @thirsty = true
  end

  # dynamic info to change pet
  def change_pet(dif_pet)
    @pet = dif_pet
  end
  #  it should have a drink method. When called, the thirsty attribute changes to false
  def drink()
    @thirsty = false
  end
end


#  Write a Dragon class
class Dragon
  def initialize(name, rider, color)
    #  it should have a dynamic name attribute (string)
    @name = name
    #  it should have a dynamic rider attribute (string)
    @rider = rider
    #  it should have a dynamic color attribute (string)
    @color = color
    #  it should have a is_hungry attribute that is true by default
    @is_hungry = true
  end

#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
  def eat
    if @is_hungry == true
      p "The #{@name} ate, but is still hungry!"
    else
      p "The #{@name} ate, and is finally full."
  end
end
count = 0
name = :eat

  TracePoint.trace(:call) do |t|
  count += 1 if t.method_id == name
  end

  if count >= 4
    then @is_hungry = false
  end
end


#  Write a Hobbit class
class Hobbit
  def initialize(name, disposition)
    #  it should have a dynamic name attribute (string)
    @name = name
    #  it should have a dynamic disposition attribute (string)
    @disposition = disposition
    #  it should have an age attribute that defaults to 0
    @age = 0
  end

  #  it should have a celebrate_birthday method. When called, the age increases by 1
  def celebrate_birthday()
    @age = age+1
  end

  #  it should have an is_adult attribute (boolean) that is false by default.
  #  once a Hobbit is 33, it should be an adult
  @is_adult = false

  if age == 33 && age <= 100
    @is_adult = true
  else @is_adult = false
  end

  #  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
  @is_old = false

  if @age >= 101
    @is_old = true
  end

  #  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
  @has_ring = false

  if name == "Frodo"
    @has_ring = true
  end

end
