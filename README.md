# String Calculator TDD Kata

This is a Ruby implementation of the **String Calculator TDD Kata**, following the Test-Driven Development (TDD) approach. The goal is to create a simple string calculator that can handle various input formats and edge cases.

---

## **Features**
The `StringCalculator` class has a single method `add` that takes a string of numbers and returns their sum. It supports:
1. Empty strings (returns `0`).
2. Single numbers (returns the number itself).
3. Comma-separated numbers (returns the sum).
4. Newline-separated numbers (returns the sum).
5. Custom delimiters (e.g., `//;\n1;2` returns `3`).
6. Negative numbers (throws an exception with the negative numbers listed).

---

## **Setup**
1. Ensure you have **Ruby** installed. You can check by running:
   ```sh
   ruby -v
2. Install rspec for testing
   ```sh
   gem install rspec
3. Clone this repository or create a new directory for the project:
   ```sh
   git clone <repository-url>
   cd string_calculatorstring-calculator-tdd-kata
4. Intiliaze Rspec
   ```sh
   rspec --init

## **Running the Tests**

1. To run the tests, use the following command:
   ```sh
   rspec

2. You should see output like this:
   ```sh
   StringCalculator
    #add
      returns 0 for an empty string
      returns the number itself for a single number
      returns the sum of two numbers
      handles newlines between numbers
      supports custom delimiters
      throws an exception for negative numbers

   6 examples, 0 failures

## **Code Example**

   ```sh
   calculator = StringCalculator.new

   puts calculator.add("")           # => 0
   puts calculator.add("1")          # => 1
   puts calculator.add("1,5")        # => 6
   puts calculator.add("1\n2,3")     # => 6
   puts calculator.add("//;\n1;2")   # => 3
