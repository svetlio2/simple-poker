class ChatRoom < ActiveRecord::Base
  has_many :messages, dependent: :delete_all
  validates :name, presence: true
end