# String Calculator
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = numbers.scan(/\d+/).map(&:to_i)
    negative_numbers = numbers.select { |number| number.negative? }

    if negative_numbers.any?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    numbers.sum
  end
end
