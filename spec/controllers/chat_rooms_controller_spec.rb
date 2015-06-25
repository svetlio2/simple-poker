require 'rails_helper'

RSpec.describe ChatRoomsController do
  describe 'GET #index' do
    context 'with current user' do
      before(:each) do
        session['username'] = 'Somebody'
        get :index
      end

      it 'shows collections of chat rooms' do
        chat_rooms = ChatRoom.all
        expect( assigns(:chat_rooms) ).to eq(chat_rooms)
      end

      it 'renders :index view' do
        expect(response).to render_template :index
      end
    end

    context 'without current user' do
      it 'redirect to root_path' do
        get :index
        expect(response).to redirect_to root_path
      end
    end
  end

  describe 'POST #create' do
    context 'without current user' do
      it 'redirect to root_path' do
        post :create
        expect(response).to redirect_to root_path
      end
    end

    context 'with current user' do
      before(:each) { session['username'] = 'Somebody' }
      
      it 'redirect to chat_rooms_path' do
        post :create, room_name: 'SomeName'
        expect(response).to redirect_to chat_rooms_path
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'shows notice' do
    end
  end
end