class Languages
  def self.programming
    @programming = %w[/Ruby /Java /Php]
  end

  def self.suggest
    @suggests = programming.sample
  end
end
