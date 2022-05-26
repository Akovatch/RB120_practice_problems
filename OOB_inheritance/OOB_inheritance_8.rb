# Method Lookup (Part 2)

# Using the following code, determine the lookup path used when invoking cat1.color.
# Only list the classes and modules that Ruby will check when searching for the #color method.

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

# Solution: Ruby searches the entire path to BasicObject because it cannot find the method
# Cat
# Animal
# Object
# Kernel
# BasicObject