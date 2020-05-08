#!/usr/bin/env ruby

require ('./lib/anagrams.rb')

puts "Hi there! Let's compare two words and see if they're anagrams. I'll even let you pick the words."
puts "What's the first word?"
user_word_1 = gets.chomp
puts "What's the second word?"
user_word_2 = gets.chomp
anagram = Anagram.new(user_word_1, user_word_2)
anagram.word_checker()
  if (anagram.word_checker == false)
    puts "Looks like at least one of those isn't a word. Let's start over."
  end
anagram.char_checker()
  if (anagram.char_checker == false)
    puts "Gotta keep those special characters out of there. Let's start over."
  end
anagram.anagram_checker()
  if (anagram.anagram_checker == true)
    puts "Those are anagrams. Good work. Let's start over."
  else 
    puts "Nope. Those aren't anagrams. Let's see if they're close though."
  end
anagram.antigram_checker()
  if (anagram.antigram_checker == false)
    puts "Not antigrams either. Just two words that are kinda close to each other."
  else
    puts "Wow. Those words have literally nothing in common. I sorta feel like you did that on purpose."
  end