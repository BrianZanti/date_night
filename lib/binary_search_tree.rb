require './lib/node'

class BinarySearchTree
  attr_reader :root

  def initialize
    @root = nil
  end

  def insert(score, name)
    if @root == nil
      @root = Node.new(score,name)
    else
      new_node = Node.new(score, name)
      insert_recursive(@root, new_node)
    end
  end

  def insert_recursive(current_node, new_node)
    if new_node.score < current_node.score
      insert_left(current_node, new_node)
    else
      insert_right(current_node, new_node)
    end
  end

  def insert_left(current_node, new_node)
    if current_node.left == nil
      current_node.left = new_node
    else
      insert_recursive(current_node.left, new_node)
    end
  end

  def insert_right(current_node, new_node)
    if current_node.right == nil
      current_node.right = new_node
    else
      insert_recursive(current_node.right, new_node)
    end
  end
end
