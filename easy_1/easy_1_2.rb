# What's the Output?

# Take a look at the following code:

# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     @name.upcase!
#     "My name is #{@name}."
#   end
# end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# Further Exploration

# What would happen in this case?

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# This code "works" because of that mysterious to_s call in
# Pet#initialize. However, that doesn't explain why this
# code produces the result it does. Can you?

# The to_s method in the class contains string interpolation, which converts
# the integer to a string, thereby avoiding an error. When we call fluffy.name on line 65
# the instance variable @name is still referencing the local variable name initialized in main,
# which has since been incremented to 43. This is why the output is '43'.