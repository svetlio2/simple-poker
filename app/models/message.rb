class Message < ActiveRecord::Base
  belongs_to :chat_room
  validates :user_name, presence: true
  validates :content, presence: true
  validates :chat_room, presence: true

  def sended
    created_at.strftime("%I:%M:%S")
  end
end