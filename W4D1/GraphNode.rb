require 'set'

class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end
end

def bfs(starting_node, target_value)
  queue = [starting_node]
  seen = Set.new()

  until queue.empty?
    node = queue.shift
    while !seen.include?(node)
      return node.val if node.val == target_value
      seen.add(node)
      queue = queue + node.neighbors
    end
  end
  
  return nil
end