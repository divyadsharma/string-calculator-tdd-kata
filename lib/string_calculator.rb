# String Calculator
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.scan(/\d+/).map(&:to_i).sum
  end
end
