#
# DIY ADTs
# Exercise 1 - Stack
#
# Let's write a Stack class. To do this, use the following framework:

  class Stack

    def initialize
      # create ivar to store stack here!
      @current_stack = []
    end

    attr_accessor :current_stack

    def push(el)
      current_stack << el
      # adds an element to the stack
    end

    def pop
      # removes one element from the stack
      current_stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      current_stack[-1]
    end
  end
#
# To test that your code works, create a new instance of the Stack class,
#and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!



# Exercise 2 - Queue
#
# Now let's write a Queue class. We will need the following instance methods:
#enqueue(el), dequeue, and peek.
#
# Test your code to ensure it follows the principle of FIFO.
class Queue

  def initialize
    @current = []
  end
  attr_accessor :current

  def enqueue(el)
    current << el
  end

  def dequeue
    if current.length > 0
      current.shift
    end
  end

  def peek
    current[0]
  end

end






# Exercise 3 - Map
#
# As you saw in the videos for tonight, a map can be implemented using a 2D array.
# Let's write a Map class (following a similar pattern to Stack and Queue) that
#implements a map using only arrays.
#
# Remember, a map stores information in key-value pairs, where the keys are always
#unique. When implemented with arrays, a map might look something like this:
#my_map = [[k1, v1], [k2, v2], [k3, v2], ...].
#

# Our Map class should have the following instance methods: set(key, value),
# get(key), delete(key), show. Note that the set method can be used to either
#create a new key-value pair or update the value for a pre-existing key. It's up
#to you to check whether a key currently exists!
#
# As always, test your code thoroughly to make sure all properties of maps are enforced.
#
# After attempting the project make sure to check out the solution

class Map

  def initialize
    @array_master = []
  end

  attr_accessor :array_master

  def set(key, value)
    if get_key_index(key) == nil
      array_master << [key, value]
    elsif get_key_index(key) >= 0
      array_master[get_key_index(key)][1] = value
    end
  end

  def get_key_index(key)
    all_keys = array_master.map { |e| e[0] }
    if all_keys.include?(key) == true
      index = all_keys.index(key)
    else
      nil
    end
  end

  def get(key)
    if get_key_index(key) != nil
      array_master[get_key_index(key)][1]
    end
  end

  def delete(key)
    if get_key_index(key) >= 0
      array_master.delete_at(get_key_index(key))
    end
  end

  def show
    array_master
  end
end
