# frozen_string_literal: true

require_relative '../lib/string_calculator'

# rubocop:disable Metrics/BlockLength
RSpec.describe StringCalculator do
  describe '#add with an empty string' do
    it 'returns 0' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end
  end

  describe '#add with a single number' do
    it 'returns the number itself' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
    end
  end

  describe '#add with two numbers' do
    it 'returns the sum of the numbers' do
      calculator = StringCalculator.new
      expect(calculator.add('1,2')).to eq(3)
    end
  end

  describe '#add with multiple numbers' do
    it 'returns the sum of the numbers' do
      calculator = StringCalculator.new
      expect(calculator.add('1,2,3,4')).to eq(10)
    end
  end

  describe '#add with new lines between numbers' do
    it 'returns the sum of the numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end

  describe '#add with different delimiters' do
    it 'returns the sum of the numbers' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2")).to eq(3)
    end
  end
end
# rubocop:enable Metrics/BlockLength
