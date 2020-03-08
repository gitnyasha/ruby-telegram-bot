require_relative "../lib/bot_logic"

RSpec.describe Languages do
  describe "#programming" do
    it "it shows a list of programming books available" do
      books = Languages.programming
      expect(books).to be_a(Array)
    end
  end

  describe "#suggest" do
    it "it suggests a book for you to read" do
      books = Languages.suggest
      expect(books).to be_a(String)
    end
  end
end
