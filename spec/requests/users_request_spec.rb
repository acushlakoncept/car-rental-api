# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let!(:user1) { create_list(:user, 2) }

  describe 'GET /users' do

    it 'returns list of users' do
      get '/api/v1/users'
      expect(response).to have_http_status(:success)
      expect(json.size).to eq(2)
    end

  end
end
