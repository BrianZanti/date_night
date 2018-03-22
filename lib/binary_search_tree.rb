require './lib/node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = Node.new(nil,nil,true)
  end

  def insert(current_node = @root, score, name)
    if current_node.empty?
      current_node.fill(score,name)
    else
      next_node = get_next_node(current_node, score)
      insert(next_node, score, name)
    end
  end

  def get_next_node(current_node, score)
    return current_node.left if score < current_node.score
    current_node.right
  end

  def include?(score, current_node = @root)
    if current_node.empty?
      return false
    elsif(score == current_node.score)
      return true
    else
      next_node = get_next_node(current_node, score)
      return include?(score, next_node)
    end
  end
end
