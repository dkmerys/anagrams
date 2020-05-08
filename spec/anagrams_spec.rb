require ('rspec')
require ('anagrams')

describe ('Word_Checker') do
  it ("accepts user input") do
    word_checker = Word_Checker.new("Hello")
    expect(word_checker.user_word_1).to(eq("Hello"))
  end
end