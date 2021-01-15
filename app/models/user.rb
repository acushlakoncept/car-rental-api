class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3}
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
