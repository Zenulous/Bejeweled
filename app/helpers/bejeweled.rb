require 'pp'

class BejeweledHelper
  def difference_printing
    # The p method prints the object to the output stream as is, with its internal structure visible
    # If the object is an array or hash, the p method will print the keys and values on separate lines
    p [1, 2, 3] # => [1, 2, 3]
    p({ a: 1, b: 2 }) # => {:a=>1, :b=>2}

    # The pp method is similar to the p method, but it formats the output in a more readable way
    # If the object is an array or hash, the pp method will print the keys and values on separate lines
    # and indent the inner elements to make the output more readable
    pp [1, 2, 3] # => [1, 2, 3]
    pp({ a: 1, b: 2 }) # => {:a=>1, :b=>2}

    # The puts method prints the object to the output stream and adds a newline character at the end
    # If the object is an array or hash, the puts method will print each element on a separate line
    puts [1, 2, 3] # => 1\n2\n3\n
    puts({ a: 1, b: 2 }) # => a: 1\nb: 2\n

    # The print method is similar to the puts method, but it does not add a newline character at the end
    # If the object is an array or hash, the print method will print all the elements on the same line
    # separated by a space
    print [1, 2, 3] # => 1 2 3
    print({ a: 1, b: 2 }) # => a: 1 b: 2
  end

  def show_falsey_and_comparison
    # In Ruby, the following values are considered "falsey":
    # - false
    # - nil

    # All other values, including 0, empty strings, and empty arrays, are considered "truthy"

    # The "==" operator is used to compare two values for equality
    # It returns true if the two values are equal, and false otherwise
    puts 1 == 1 # => true
    puts 1 == 2 # => false

    # The "!=" operator is used to compare two values for inequality
    # It returns true if the two values are not equal, and false otherwise
    puts 1 != 1 # => false
    puts 1 != 2 # => true

    # The ">" and "<" operators are used to compare two values for greater-than and less-than, respectively
    # They return true if the left-hand value is greater-than/less-than the right-hand value, and false otherwise
    puts 1 > 2 # => false
    puts 2 > 1 # => true

  end
  # This method uses a hash to store data about a gem. The keys are symbols and the values are strings.
  def gem_data(gem_name, gem_color)
    gem_data = {
      name: gem_name,
      color: gem_color
    }

    puts "The gem's name is #{gem_data[:name]} and its color is #{gem_data[:color]}."
  end

  # This method takes a string and a symbol as arguments, and uses them to create a message.
  def create_message(message, font)
    puts "The message is: #{message} and the font is: #{font}."
  end

  def raise_and_rescue
    begin
      # Some code that may raise an error
      raise "An error has occurred"
    rescue StandardError => error
      # This block will only catch StandardError and its subclasses
      puts "Error: #{error.message}"
    end
  end

  def hash_symbols_example
    # Create a hash with symbol keys
    my_hash = {
      :key1 => "value1",
      :key2 => "value2"
    }

    # Retrieve values from the hash using symbol keys
    puts my_hash[:key1] # "value1"
    puts my_hash[:key2] # "value2"

    # You can also use string keys to access the values in the hash
    puts my_hash["key1"] # "value1"
    puts my_hash["key2"] # "value2"
  end
end