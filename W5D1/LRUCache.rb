class LRUCache

    def initialize(capacity)
        @queue = []
        @capacity = capacity
    end

    def count
      # returns number of elements currently in cache
      @queue.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @queue.include?(el)
        @queue.unshift(@queue.delete(el))
      elsif count < capacity
        @queue<<el
      else
        @queue.unshift
        @queue << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      p @queue
      nil
    end

    private
    # helper methods go here!

end