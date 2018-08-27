# PHASE 2

class BlueError < StandardError
  
  def message
    'sdkjhjksdhf'
  end
  
end

# unless str.to_i.is_a?(Integer)
#   raise BlueError #{}"Cannot convert a string to integer."
# end


def convert_to_int(str)
   # p m = Integer(str).is_a?(Integer)
   unless false 
    raise BlueError #{}"Cannot convert a string to integer."
  else
    Integer(str)
  end
end

def main
  begin 
    # Integer(str)
    p 'input a number to be converted'
    num = gets.chomp
    convert_to_int(num)
  rescue BlueError => e
    puts e.message
    puts 'Cannot convert string to int'
    # retry
    nil
  end
end


  # p 'try again'



# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


