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
    if score < current_node.score
      current_node.left
    else
      current_node.right
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
