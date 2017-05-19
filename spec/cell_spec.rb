require 'cell'

describe Cell do

  subject(:cell) { described_class.new(:x,:y)}

  it 'has an x_coordinate' do
    expect(cell.x_coordinate).to eq :x
  end
  it 'has a y_coordinate' do
    expect(cell.y_coordinate).to eq :y
  end
end
