class CurrentChatRoomController < ApplicationController
  def index
    @current_chat_room = ChatRoom.find(params[:id])
    @message = Message.new
    redirect_to chat_rooms_path if @current_chat_room.nil?
  end

  def create
    username = session[:username]
    current_chat_room = ChatRoom.find(params[:id])
    @message = Message.new(user_name: username,
                           content: params[:content],
                           chat_room: current_chat_room)
    respond_to do |format|
      if @message.save
        format.js {render 'create'}
      else
        format.js {render nothing: true}
      end
      format.html { redirect_to current_chat_room_path }
    end
  end
end