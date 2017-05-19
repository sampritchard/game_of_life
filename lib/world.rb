class World

  attr_reader :living_cells

  def initialize
    @living_cells = []
  end

  def empty?
    @living_cells.length < 1
  end

  def insert_cell(x,y)
    raise 'Cell already exists' if @living_cells.include? ([x,y])
    @living_cells << [x,y]
  end

  def remove_cell(x,y)
    @living_cells.delete([x,y])
  end

end

# def assert_equal(expected_result, result)
#   "Expected result #{expected_result} got #{result}"
# end

# p assert_equal(true, World.new.is_empty?)
# p assert_equal([1,1], World.new.insert_cell(1,1))
