require 'rails_helper'

RSpec.describe SessionsController do
  describe 'GET #new' do
    it 'renders :new view' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      let(:the_name) { 'some name' }
      before(:each) { post :create, name: the_name }

      it 'sets a session' do
        expect(session['username']).to eq the_name
      end

      it 'redirects to chat_rooms_path' do
        expect(response).to redirect_to chat_rooms_path
      end
    end

    context 'with unvalid attributes' do
      let(:the_name) { '   ' }
      before(:each) { post :create, name: the_name }

      it 'renders :new view' do
        expect(response).to render_template :new
      end
    end
  end
end