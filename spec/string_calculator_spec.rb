require 'string_calculator'

RSpec.describe StringCalculator do
    let(:calculator) { StringCalculator.new }
    describe '#add' do
        it 'returns 0 for an empty string' do
            expect(calculator.add('')).to eq(0)
        end
        
        it 'returns the number for a single number string' do
            expect(calculator.add('5')).to eq(5)
        end

        it 'returns the sum of two numbers' do
            expect(calculator.add('1,2')).to eq(3)
        end

        it 'returns the sum of multiple numbers' do
            expect(calculator.add('1,2,3,4')).to eq(10)
        end

        it 'handles new lines as delimiters' do
            expect(calculator.add("1\n2,3")).to eq(6)
        end

        it 'handle custom delimiters' do
            expect(calculator.add("//;\n1;2")).to eq(3)
        end

        it 'handle negative numbers' do
            expect { calculator.add("1,-2,3") }.to raise_error(RuntimeError, "negatives not allowed: -2")
        end
    end
end