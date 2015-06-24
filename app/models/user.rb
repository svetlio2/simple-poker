class User
  attr_reader :name
  def initialize(name:)
    @name = name.strip
  end

  def save
    is_valid?
  end

  private
  
  def is_valid?
    !name.empty? && name.size < 40
  end
end