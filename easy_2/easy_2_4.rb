# # Reverse Engineering

# # Write a class that will display:

# ABC
# xyz

# when the following code is run:

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

class Transform
  def initialize(letters)
    @letters = letters
  end

  def uppercase
    @letters.upcase
  end

  def self.lowercase(input)
    input.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')