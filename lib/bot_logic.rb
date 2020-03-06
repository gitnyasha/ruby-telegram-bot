class Languages
  def self.programming
    @programming = ["/book1 - Ruby", "/book2 - Java", "/book3 - Php"]
  end

  def self.suggest
    @suggests = programming.sample
  end
end
