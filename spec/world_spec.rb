require 'world'

describe World do

  subject(:world) {described_class.new}

  it 'empty when created' do
    expect(world).to be_empty
  end
  it 'adds the living cell to the array' do
    expect(world.insert_cell(1,1)).to eq [[1,1]]
  end
  it 'is no longer empty after adding a cell' do
    world.insert_cell(1,1)
    expect(world).not_to be_empty
  end
  it 'raises an error when pass in a living cell that already exists' do
    world.insert_cell(1,1)
    expect{world.insert_cell(1,1)}.to raise_error 'Cell already exists'
  end
  it 'removes cell when removed' do
    world.insert_cell(1,1)
    world.remove_cell(1,1)
    expect(world.living_cells).to eq []
  end
end
