require 'pry'

class Anagram
  attr_reader(:user_word_1, :user_word_2)
  def initialize(user_word_1, user_word_2)
    @user_word_1 = user_word_1.downcase.gsub(/[!@#$%^&*()+={}"':;?><.,~]/, "*")
    @user_word_2 = user_word_2.downcase.gsub(/[!@#$%^&*()+={}"':;?><.,~]/, "*")

  end

  def word_checker(*words)
    vowels = ["a", "e", "i", "o", "u", "y"]
    words.chars.all? do |char|
      vowels.include?(char)
    end
  end

  def char_checker(word1, word2)
    if (word1.include? ("*") || word2.include?("*"))
      return false
    else 
      return true
    end
  end

  def anagram_checker(word1, word2)
    word_1_array = word1.split("").sort
    word_2_array = word2.split("").sort
    if (word_1_array == word_2_array)
      return true
    else
      return false
    end
  end

  def antigram_checker(word1, word2)
    word_1_array = word1.split("").sort
    word_2_array = word2.split("").sort
    word_1_array.any? do |letter|
      word_2_array.include?(letter)
    end
  end
end