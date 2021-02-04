require 'rails_helper'

RSpec.describe Favourite, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:car) }
  end
end
