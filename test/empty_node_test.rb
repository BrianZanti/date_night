require 'minitest/autorun'
require 'minitest/pride'
require './lib/empty_node'

class EmptyNodeTest < Minitest::Test
  def test_it_exists
    assert_instance_of EmptyNode, EmptyNode.new
  end
end
