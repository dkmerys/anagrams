require 'pry'

class Anagram
  attr_reader(:user_word_1)
  def initialize(user_word_1)
    @user_word_1 = user_word_1.downcase
  end

  def word_checker
    user_letters = user_word_1.split
    vowels = ["a", "e", "i", "o", "u", "y"]
    user_letters.any? do |letter|
      vowels.include?(letter)
    end
  end
end