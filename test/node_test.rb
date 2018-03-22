require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new(nil,nil)
    assert_instance_of Node, node
  end

  def test_it_has_score
    node = Node.new(45,"name")
    assert_equal 45, node.score
  end

  def test_it_has_name
    node = Node.new(45,"name")
    assert_equal "name", node.name
  end

  def test_it_has_nil_children
    node = Node.new(nil,nil)
    assert_nil node.left
    assert_nil node.right
  end

  def test_children_can_be_set
    node = Node.new(nil,nil)
    left = Node.new(nil,nil)
    right = Node.new(nil,nil)
    node.left = left
    node.right = right
    assert_equal left, node.left
    assert_equal right, node.right
  end

  def test_it_is_not_empty_by_default
    node = Node.new(nil,nil)
    refute node.empty?
  end

  def test_it_can_be_empty
    node = Node.new(nil,nil,true)
    assert node.empty?
  end

  def test_empty_can_be_filled
    node = Node.new(nil,nil,true)
    node.fill(25, "hello")
    refute node.empty?
    assert_equal 25, node.score
    assert_equal "hello", node.name
    assert node.left.empty?
    assert node.right.empty?
  end
end
