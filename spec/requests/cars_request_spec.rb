require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  let(:user) { FactoryBot.create(:user, username: 'acushla', password: 'password') }

  describe 'GET /cars' do
    before do
      FactoryBot.create(:car, make: 'Toyota', model: 'Corolla',
                              year: 2011, color: 'Silver', transmission: 'Automatic',
                              ac: 'true', max_capacity: 4, user: user,
                              image_url: 'https://source.unsplash.com/800x600/?car,silver')
    end

    it 'returns error when there is no current logged in user' do
      get '/api/v1/cars'

      expect(response).to have_http_status(:unauthorized)
      expect(json).to eq({
        'error' => 'You will need to login first'
      })
    end

    # it 'returns all users' do
    #   get '/api/v1/users'

    #   expect(response).to have_http_status(:success)
    # end
  end
end
