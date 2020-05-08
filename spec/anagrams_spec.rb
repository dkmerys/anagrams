require ('rspec')
require ('anagrams')

describe ('Anagram') do
  it ("accepts user input") do
    anagram = Anagram.new("HELLO", "hello")
    expect(anagram.user_word_1).to(eq("hello"))
  end

  it ("checks if user input contains a vowel") do
    anagram = Anagram.new("bcd", "aeiou")
    expect(anagram.word_checker).to(eq(false))
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

  it ("checks if user input contains special characters") do
    anagram = Anagram.new("Hello!", "World")
    expect(anagram.character_checker).to(eq(false))
  end
end