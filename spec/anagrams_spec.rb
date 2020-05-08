require ('rspec')
require ('anagrams')

describe ('Anagram') do
  it ("accepts user input") do
    anagram = Anagram.new("HELLO", "hello")
    expect(anagram.user_word_1).to(eq("hello"))
  end

  it ("returns false if user input contains no vowel") do
    anagram = Anagram.new("bcd", "aeiou")
    expect(anagram.word_checker(anagram.user_word_1)).to(eq(false))
  end

  it ("returns true if user input contains a vowel") do
    anagram = Anagram.new("bcd", "aeiou")
    expect(anagram.word_checker(anagram.user_word_2)).to(eq(true))
  end

  it ("replaces special characters in a word with asterix") do
    anagram = Anagram.new("Hello!", "World!")
    expect(anagram.user_word_1).to(eq("hello*"))
  end

  it ("accepts 2 user inputs and replaces special characters with asterix") do
    anagram = Anagram.new("Hello!", "Fr!ends")
    expect(anagram.user_word_1).to(eq("hello*"))
    expect(anagram.user_word_2).to(eq("fr*ends"))
  end

  it ("returns true if user input contains no special characters") do
    anagram = Anagram.new("Hello!", "World")
    expect(anagram.character_checker(anagram.user_word_2)).to(eq(true))
  end

  it ("returns false if user input contains special characters") do
    anagram = Anagram.new("Hello!", "World")
    expect(anagram.character_checker(anagram.user_word_1)).to(eq(false))
  end

  it ("returns true if both user inputs contain the same array of letters") do
    anagram = Anagram.new("Elvis", "Lives")
    expect(anagram.anagram_checker(anagram.user_word_1, anagram.user_word_2)).to(eq(true))
  end

  it ("returns false if both user inputs do not contain the same array of letters") do
    anagram = Anagram.new("Elvis", "Hawaii")
    expect(anagram.anagram_checker(anagram.user_word_1, anagram.user_word_2)).to(eq(false))
  end

  it ("returns true if both user inputs share no letters") do
    anagram = Anagram.new("hi", "bye")
    expect(anagram.anagram_checker(anagram.user_word_1, anagram.user_word_2)).to(eq(true))
  end
end