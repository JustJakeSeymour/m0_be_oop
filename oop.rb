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

  attr_reader :thirsty
  attr_reader :pet

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

vampire1 = Vampire.new("Dracula")

vampire2 = Vampire.new("Count Chocula")

p vampire1.thirsty

vampire1.drink

p vampire1.thirsty

p vampire2.pet

vampire2.change_pet("wolf")

p vampire2.pet

#  Write a Dragon class
class Dragon

attr_reader :is_hungry

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

dragon1 = Dragon.new("Toothless", "Hiccup", "Black")

dragon2 = Dragon.new("Stormfly", "Astrid", "Green")

dragon3 = Dragon.new("Smaug", "None", "Red")

4.times { dragon3.eat }
p dragon3.is_hungry

### I need to come back and figure out how to recognize ".eat" has been used, and store that quantity
### I also want to store that ".eat" was used on a specific instance, because if I do not, then is_hungry will = true for all


#  Write a Hobbit class
class Hobbit
  def initialize(name, disposition)
    #  it should have a dynamic name attribute (string)
    @name = name
    #  it should have a dynamic disposition attribute (string)
    @disposition = disposition
    #  it should have an age attribute that defaults to 0
####### I fixed my block by making sure `@age` was being used, and that the methods
####### were defined in their own codeblocks. I also had to call the method to
####### perform the "check" and change the attribute.
    @age = 0
    #  it should have an is_adult attribute (boolean) that is false by default.
    #  once a Hobbit is 33, it should be an adult
    @is_adult = false

    #  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
    @is_old = false

    #  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
    @has_ring = false

  end

  #  it should have a celebrate_birthday method. When called, the age increases by 1
  def celebrate_birthday()
    @age = @age + 1
  end

  # This method is how the @is_adult gets changed
  def adult_check()
    if @age >= 33 && @age <= 100
      @is_adult = true
      else @is_adult = false
    end
  end

  # This method is how the @is_old gets changed
  def old_check()
    if @age >= 101
      @is_old = true
    end
  end

  # This method is how the @has_ring gets changed
  def ring_check()
    if @name == "Frodo"
    @has_ring = true
    end
  end

end

hobbit1 = Hobbit.new("Bilbo", "Curious")
p hobbit1
150.times { hobbit1.celebrate_birthday }
hobbit1.adult_check
hobbit1.old_check
hobbit1.ring_check
p hobbit1

hobbit2 = Hobbit.new("Frodo", "Sunny")
p hobbit2
50.times { hobbit2.celebrate_birthday }
hobbit2.adult_check
hobbit2.old_check
hobbit2.ring_check
p hobbit2

hobbit3 = Hobbit.new("Samwise", "Brave")
hobbit3.adult_check
hobbit3.old_check
