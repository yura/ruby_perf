require 'matrix_multiplicator'

RSpec.describe MatrixMultiplicator, '#multiply' do
  subject(:multiply) { described_class.multiply(x, y) }

  context '2x2 * 1x2' do
    let(:x) do
      [[1, 2],
       [3, 4]] 
    end
    let(:y) do
      [[5],
       [6]] 
    end
    it { expect(multiply).to eq([[17], [39]]) }
  end
end
