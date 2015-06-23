class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
  end

  def destroy
    chat_room_must_die = ChatRoom.find(params[:id])
    chat_room_must_die.destroy
    redirect_to chat_rooms_path, notice: 'Deleted chat room!'
  end
end