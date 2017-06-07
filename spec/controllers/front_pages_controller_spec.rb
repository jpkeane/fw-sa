require 'rails_helper'

RSpec.describe FrontPagesController, type: :controller do
  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #about' do
    it 'returns http success' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #pricing' do
    it 'returns http success' do
      get :pricing
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #terms' do
    it 'returns http success' do
      get :terms
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #privacy' do
    it 'returns http success' do
      get :privacy
      expect(response).to have_http_status(:success)
    end
  end
end
