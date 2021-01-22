# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it {
    should validate_length_of(:username)
      .is_at_least(3)
  }

  it {
    should_not validate_length_of(:password)
      .is_at_least(5)
  }

  describe 'Associations' do
    it { should have_many(:cars) }
    it { should have_many(:favourites) }
  end
end
