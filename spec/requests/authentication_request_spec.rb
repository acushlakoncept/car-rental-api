require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
  describe 'POST /authenticate' do
    let(:user) { FactoryBot.create(:user, username: 'acushla', password: 'password') }

    it 'authenticates the user' do
      post '/api/v1/login', params: { username: user.username, password: 'password' }

      expect(response).to have_http_status(:created)
      expect(json).to eq({
                           'id' => 1,
                           'username' => 'acushla',
                           'admin' => false,
                           'token' => AuthenticationTokenService.call(1)
                         })
    end
  end
end
