class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_name
      t.string :content
      t.references :chat_rooms, index: true, foreign_key: true
    end
  end
end
