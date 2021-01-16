# frozen_string_literal: true

class UserRepresenter
  def initialize(user)
    @user = user
  end

  def as_json
    {
      id: user.id,
      username: user.username,
      admin: user.admin
    }
  end

  private

  attr_reader :user
end
