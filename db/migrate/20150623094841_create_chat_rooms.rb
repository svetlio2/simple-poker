class CreateChatRooms < ActiveRecord::Migration
  def change
    create_table :chat_rooms do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
