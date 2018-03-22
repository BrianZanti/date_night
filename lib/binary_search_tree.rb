require './lib/node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(score, name)
    if @root == nil
      @root = Node.new(score,name)
      @root.left = Node.new(nil,nil,true)
      @root.right = Node.new(nil,nil,true)
    else
      insert_recursive(@root, score, name)
    end
  end

  def insert_recursive(current_node, score, name)
    if current_node.empty?
      current_node.fill(score,name)
      current_node.left = Node.new(nil,nil,true)
      current_node.right = Node.new(nil,nil,true)
    else
      next_node = get_next_node(current_node, score)
      insert_recursive(next_node, score, name)
    end
  end

  def get_next_node(current_node, score)
    return current_node.left if score < current_node.score
    current_node.right
  end
end
