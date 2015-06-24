class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def create
    chat_room = ChatRoom.new(name: params[:room_name])
    if chat_room.save
      redirect_to chat_rooms_path
    else
      redirect_to root_path
    end
  end

  def destroy
    chat_room_must_die = ChatRoom.find(params[:id])
    chat_room_must_die.destroy
    redirect_to chat_rooms_path, notice: 'Deleted chat room!'
  end
end