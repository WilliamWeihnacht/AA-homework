class Stack
    def initialize
      @array = []
    end

    def push(el)
      # adds an element to the stack
      @array = [el] + @array
    end

    def pop
      # removes one element from the stack
      @array.shift
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      return @array[0]
    end
end

s = Stack.new
s.push(1)
s.push(2)
s.push(3)
s.push(4)
s.push(5)
p s.peek
s.pop
p s.peek