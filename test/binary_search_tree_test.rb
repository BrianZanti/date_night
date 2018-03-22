require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require 'pry'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @bst = BinarySearchTree.new
  end

  def test_it_exists
    assert_instance_of BinarySearchTree, @bst
  end

  def test_it_has_nil_root
    assert_nil @bst.root
  end

  def test_can_insert_at_root
    @bst.insert(0, "name")
    assert_equal "name", @bst.root.name
  end

  def test_inserting_root_creates_empty_children
    @bst.insert(0, "name")
    assert @bst.root.left.empty?
    assert @bst.root.right.empty?
  end

  def test_can_insert_muliple
    @bst.insert(5, "5")
    @bst.insert(1, "1")
    @bst.insert(6, "6")
    @bst.insert(3, "3")
    @bst.insert(2, "2")
    # binding.pry
    assert_equal 5, @bst.root.score
    assert_equal 1, @bst.root.left.score
    assert_equal 6, @bst.root.right.score
    assert_equal 3, @bst.root.left.right.score
    assert_equal 2, @bst.root.left.right.left.score
  end
end
