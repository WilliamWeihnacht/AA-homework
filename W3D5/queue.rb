class Queue

    def initialize
        @array = []
    end

    def enqueue(el)
        @array << el
    end

    def dequeue
        @array.shift
    end

    def peek
        return @array[0]
    end
end

s = Queue.new
s.enqueue(1)
s.enqueue(2)
s.enqueue(3)
s.enqueue(4)
s.enqueue(5)
p s.peek
s.dequeue
p s.peek