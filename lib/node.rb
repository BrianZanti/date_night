class Node
  attr_reader :score,
              :name

  attr_accessor :left,
                :right

  def initialize(score, name, empty = false)
    @score = score
    @name = name
    @right = nil
    @left = nil
    @empty = empty
  end

  def empty?
    @empty
  end

  def fill(score, name)
    @score = score
    @name = name
    @left = Node.new(nil,nil,true)
    @right = Node.new(nil,nil,true)
    @empty = false
  end
end
