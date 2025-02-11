# frozen_string_literal: true

# String Calculator
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = numbers.scan(/\d+/).map(&:to_i)
    negative_numbers = numbers.select(&:negative?)

    raise "negative numbers not allowed: #{negative_numbers.join(', ')}" if negative_numbers.any?

    numbers.sum
  end
end
