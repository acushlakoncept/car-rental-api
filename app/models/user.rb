class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3}
    has_secure_password
end
