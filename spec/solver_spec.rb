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
    context 'returns the reverse of a string' do
      it 'returns the reverse of "hello"' do
        solver = Solver.new
        expect(solver.reverse('hello')).to eq('olleh')
      end
    end

    context 'returns the reverse of a string variable' do
      it 'returns the reverse of "hello"' do
        solver = Solver.new
        variable = 'hello'
        expect(solver.reverse(variable)).to eq('olleh')
      end
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

    context 'when number is divisible by 3 and 5' do
      it 'returns "fizzbuzz" for numbers divisible by 3 and 5' do
        solver = Solver.new
        expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when number is not divisible by 3 or 5' do
      it 'returns the input as a string' do
        solver = Solver.new
        expect(solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end
