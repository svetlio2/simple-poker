class CurrentChatRoomController < ApplicationController
  def index
    @current_chat_room = ChatRoom.find(params[:id])
    redirect_to chat_rooms_path if @current_chat_room.nil?
  end

  def create
    username = session[:username]
    current_chat_room = ChatRoom.find(params[:id])
    new_message = Message.new(
                    user_name:username,
                    content: params[:content],
                    chat_room: current_chat_room)
    new_message.save

    redirect_to current_chat_room_path
  end
end