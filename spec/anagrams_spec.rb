require ('rspec')
require ('anagrams')

describe ('Word_Checker') do
  it ("accepts user input") do
    word_checker = Word_Checker.new("HELLO")
    expect(word_checker.user_word_1).to(eq("hello"))
  end
end