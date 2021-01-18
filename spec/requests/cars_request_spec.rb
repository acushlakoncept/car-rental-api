require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  let!(:user1) { create_list(:user, 1) }

  describe 'GET /cars' do
    before do
      FactoryBot.create(:car, make: 'Toyota', model: 'Corolla',
                              year: 2011, color: 'Silver', transmission: 'Automatic',
                              ac: true, max_capacity: 4, user: user1)

      FactoryBot.create(:car, make: 'Nissan', model: 'Almera',
                              year: 2002, color: 'Blue', transmission: 'Manual',
                              ac: true, max_capacity: 4, user_id: user1.id)
    end

    it 'returns all cars' do
      get '/api/v1/cars'

      expect(response).to have_http_status(:success)
      expect(response_body.size).to eq(2)
    end
  end
end
