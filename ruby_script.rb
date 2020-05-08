#!/usr/bin/env ruby

require ('./lib/anagrams.rb')

puts "Hi there! Let's compare two words and see if they're anagrams. I'll even let you pick the words."
puts "What's the first word?"
user_word_1 = gets.chomp
puts "What's the second word?"
user_word_2 = gets.chomp
anagram = Anagram.new(user_word_1, user_word_2)
anagram.word_checker(user_word_1)
  if (anagram.word_checker(anagram.user_word_1, anagram.user_word_2) == false)
    puts "Looks like at least one of those isn't a word. Try again."
  elsif (anagram.char_checker(anagram.user_word_1, anagram.user_word_2) == false)
    puts "Gotta keep those special characters out of there. Try again."
  elsif (anagram.anagram_checker(anagram.user_word_1, anagram.user_word_2) == true)
    puts "Those are anagrams. Good work. Try again."
  elsif (anagram.anagram_checker(anagram.user_word_1, anagra.user_word_2) == false)
    puts "Nope. Those aren't anagrams. Let's see if they're close though."
  elsif (anagram.antigram_checker(anagram.user_word_1, anagram.user_word_2) == false)
    puts "Not antigrams either. Just two words that are kinda close to each other."
  elsif (anagram.antigram_checker(anagram.user_word_1, anagram.user_word_2) == false)
    puts "Wow. Those words have literally nothing in common. I sorta feel like you did that on purpose."
    end
  end
end