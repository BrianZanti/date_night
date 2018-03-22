class Node
  attr_reader :score,
              :name

  attr_accessor :left,
                :right

  def initialize(score, name)
    @score = score
    @name = name
    @right = nil
    @left = nil
  end
end
