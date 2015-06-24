require 'rails_helper'

RSpec.describe ChatRoom do

  describe 'assosiations' do
    it { should have_many :messages }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe '#destroy' do
    before(:each) { ChatRoom.create(name: 'DoomedChatRoom') }

    let(:chat_room) { ChatRoom.find_by(name: 'DoomedChatRoom') }

    it 'deletes the object' do
      chat_room.destroy
      search_chat_room = ChatRoom.find_by(name: 'DoomedChatRoom')
      expect(search_chat_room).to equal nil
    end

    it 'deletes the messages' do
      chat_room.messages.build(user_name: 'Ivan', content: 'testcontent1')
      chat_room.messages.build(user_name: 'Not Ivan', content: 'testcontent2')
      messages = chat_room.messages
      chat_room.destroy
      expect(messages.size).to equal 0
    end
  end
end