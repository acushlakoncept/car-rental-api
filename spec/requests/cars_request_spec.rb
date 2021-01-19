require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  let!(:user1) { create_list(:user, 5) }

  describe 'GET /cars' do
    before(:each) do
      FactoryBot.create(:car, make: 'Toyota', model: 'Corolla',
                              year: 2011, color: 'Silver', transmission: 'Automatic',
                              ac: 'true', max_capacity: 4, user_id: 1,
                              image_url: 'https://source.unsplash.com/800x600/?car,silver')
    end

    it 'returns all cars' do
      get '/api/v1/cars'

      expect(response).to have_http_status(:unauthorized)
      expect(json.size).to eq(1)
    end

    it 'returns all users' do
      get '/api/v1/users'

      expect(response).to have_http_status(:success)
    end
  end
end
