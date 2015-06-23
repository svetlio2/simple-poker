class Message < ActiveRecord::Base
  belongs_to :chat_room
  validates :chat_room, :presence => true
end