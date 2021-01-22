require 'rails_helper'

RSpec.describe 'Favourites', type: :request do
  let(:user) { FactoryBot.create(:user, username: 'acushla', password: 'password') }
  let(:car) do
    FactoryBot.create(:car, make: 'Toyota', model: 'Corolla',
                            year: 2011, color: 'Silver', transmission: 'Automatic',
                            ac: 'true', max_capacity: 4, user: user,
                            image_url: 'https://source.unsplash.com/800x600/?car,silver')
  end

  describe 'POST /favourites' do
    it 'adds a car to list of favourites' do
      post '/api/v1/favourites', params: { car_id: car.id },
                                 headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }

      expect(response).to have_http_status(:success)
      expect(json).to eq({
                           'message' => 'Added to favourite succesfully'
                         })
    end
  end
end
