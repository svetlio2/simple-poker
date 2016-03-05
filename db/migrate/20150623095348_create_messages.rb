class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_name, null: false
      t.string :content
      t.integer :chat_room_id, null: false, index: true

      t.timestamps
    end

    add_foreign_key :messages, :chat_rooms, name: :message_chat_room_id_fk
  end
end
