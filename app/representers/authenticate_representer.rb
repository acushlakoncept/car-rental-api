class AuthenticateRepresenter
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def as_json
    {
      id: user.id,
      username: user.username,
      admin: user.admin,
      token: AuthenticationTokenService.call(user.id)
    }
  end
end
