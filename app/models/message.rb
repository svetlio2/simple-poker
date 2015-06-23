class Message < ActiveRecord::Base
  belongs_to :chat_room
  validates :user_name, presence: true
  validates :content, presence: true
  validates :chat_room, presence: true
end