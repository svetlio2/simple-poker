class MessagesController < ApplicationController
  before_action :require_real_chat_room
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(user_name: session[:username],
                           content: params[:content],
                           chat_room: chat_room)

    respond_to do |format|
      if @message.save
        format.js { render 'create' }
      else
        format.js { render nothing: true }
      end

      format.html { redirect_to current_chat_room_path }
    end
  end

  private

  def require_real_chat_room
    redirect_to root_path unless chat_room
  end

  def chat_room
    @chat_room ||= ChatRoom.find_by(id: params[:id])
  end
end
