class Node
  attr_reader :score,
              :name

  attr_accessor :left,
                :right,
                :empty

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
end
