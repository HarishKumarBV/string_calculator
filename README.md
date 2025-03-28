# string_calculator

This repo contains a String Calculator implementation in Ruby, developed using Test Driven Development (TDD)

## Problem Statement

Develop a `StringCalculator` class with a method `add(string)` that returns the sum of numbers in the string.

The calculator should evolve through the following requirements (progressive stages of TDD):

1. An empty string returns 0.
2. A single number returns the number itself.
3. Two numbers, comma-delimited, return the sum.
4. Handle an unknown amount of numbers.
5. Support newlines as delimiters, e.g., `"1\n2,3"`.
6. Support custom delimiters, e.g., `"//;\n1;2"`.
7. Raise an exception for negative numbers with the message listing all of them.

## Tech Stack

- Ruby
- RSpect (for testing)

## Project Structure

- lib
  -- string_calculator.rb
- spec
  -- string_calculator_spec.rb

## Prerequisites

Ensure Ruby and Bundler is installed:

ruby -v
gem install bundler

## Setup

- Clone the repository:
  git clone https://github.com/HarishKumarBV/string_calculator.git
  cd string_calculator

- Install dependcies:
  bundle install

- Run tests:
  bundle exec rspec

Author
Harish Kumar B V
GitHub: HarishKumarBV

LinkedIn: https://www.linkedin.com/in/harish-kumar-b-v-52825419/
