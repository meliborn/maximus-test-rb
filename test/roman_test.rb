# frozen_string_literal: true

# The rules for Roman numerals are as follows:

# The basic symbols are I (= 1), V (= 5), X (= 10), L (= 50), C (= 100), D (= 500), and M (= 1000).

# If a letter is immediately followed by one of equal or lesser value,
#   the two numbers are added; thus, XX = 20, XV = 15, VI = 6.

# Some other examples of roman numerals are:
# 8 = VIII
# 2021 = MMXXI current year

# Lets write a routine to output a regular number in roman numerals (i.e. 13 -> XIII)

require 'minitest/autorun'
require 'minitest/reporters'
require 'json'
require_relative '../src/roman'

class RomanTest < Minitest::Test
  def test_run
    results = JSON.parse(File.read('test/all_tests.json'))
    results.each do |k, v|
      assert_equal(v, convert(k))
    end
  end
end
