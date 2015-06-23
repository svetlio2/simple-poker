class AddTimestampsToChatRooms < ActiveRecord::Migration
  def change
    add_column :chat_rooms, :created_at, :datetime
    add_column :chat_rooms, :updated_at, :datetime
  end
end
