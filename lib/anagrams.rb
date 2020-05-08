require 'pry'

class Anagram
  attr_reader(:user_word_1, :user_word_2)
  def initialize(user_word_1, user_word_2)
    @user_word_1 = user_word_1.downcase.gsub(/[!@#$%^&*()+={}"':;?><.,~]/, "*")
    @user_word_2 = user_word_2.downcase.gsub(/[!@#$%^&*()+={}"':;?><.,~]/, "*")

  end

  def word_checker
    user_letters = user_word_1.split
    vowels = ["a", "e", "i", "o", "u", "y"]
    # binding.pry
    user_letters.any? do |letter|
    vowels.include?(letter)
    end
  end

  def character_checker
    if (@user_word_1.include? ("*"))
      return false
    else 
      return true
    end
  end
end