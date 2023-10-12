require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'returns the factorial of 5' do
      solver = Solver.new
      expect(solver.factorial(10)).to eq(3_628_800)
    end
  end

  describe '#factorial' do
    it 'return exeption on negative numbers' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
end
