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

  def test_it_has_empty_root
    assert @bst.root.empty?
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
    @bst.insert(5, "5") #root
    @bst.insert(1, "1") #root.left
    @bst.insert(6, "6") #root.right
    @bst.insert(3, "3") #root.left.right
    @bst.insert(2, "2") #root.left.right.left

    assert_equal 5, @bst.root.score
    assert_equal 1, @bst.root.left.score
    assert @bst.root.left.left.empty?
    assert_equal 3, @bst.root.left.right.score
    assert @bst.root.left.right.right.empty?
    assert_equal 6, @bst.root.right.score
    assert @bst.root.right.right.empty?
    assert @bst.root.right.left.empty?
    assert_equal 2, @bst.root.left.right.left.score
    assert @bst.root.left.right.left.left.empty?
    assert @bst.root.left.right.left.right.empty?
  end

  def test_can_insert_muliple
    @bst.insert(5, "5") #root
    @bst.insert(1, "1") #root.left
    @bst.insert(6, "6") #root.right
    @bst.insert(3, "3") #root.left.right
    @bst.insert(2, "2")

    assert @bst.include? 5
    assert @bst.include? 3
    refute @bst.include? 10
  end
end
