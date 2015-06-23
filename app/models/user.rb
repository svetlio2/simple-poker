class User
  attr_reader :name
  def initialize(name:)
    @name = name
  end

  def send_message(message)
    message.save!
  end
end