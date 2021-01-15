require 'rails_helper'

RSpec.describe "Users", type: :request do

    let!(:user1) { create_list(:user, 2) }

    describe 'GET /api/v1/users' do
        it 'returns status code 200' do
            expect(response).to have_http_status(:success)
        end
        it 'returns list of users' do
            expect(json.size).to eq(2)
        end
    end
end
