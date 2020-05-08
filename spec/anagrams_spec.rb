require ('rspec')
require ('anagrams')

describe ('Anagram') do
  it ("accepts user input") do
    anagram = Anagram.new("HELLO")
    expect(anagram.user_word_1).to(eq("hello"))
  end

  it ("checks if user input is a word") do
    anagram = Anagram.new("bcd")
    expect(anagram.word_checker).to(eq(false))
  end
end