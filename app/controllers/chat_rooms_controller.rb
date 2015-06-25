class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def create
    chat_room = ChatRoom.new(name: params[:room_name])
    chat_room.save
    redirect_to chat_rooms_path
  end

  def destroy
    chat_room_must_die = ChatRoom.find(params[:id])
    chat_room_must_die.destroy
    redirect_to chat_rooms_path, notice: 'Deleted chat room!'
  end
end
