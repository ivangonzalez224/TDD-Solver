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

  describe '#reverse' do
    it 'returns the reverse of a string' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#reverse' do
    it 'returns the reverse of any string variable' do
      solver = Solver.new
      variable = 'hello'
      expect(solver.reverse(variable)).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    context 'when number is divisible by 3' do
      it 'returns "fizz" for numbers divisible by 3' do
        solver = Solver.new
        expect(solver.fizzbuzz(3)).to eq('fizz')
      end
    end

    context 'when number is divisible by 5' do
      it 'returns "buzz" for numbers divisible by 5' do
        solver = Solver.new
        expect(solver.fizzbuzz(5)).to eq('buzz')
      end
    end
  end
end
