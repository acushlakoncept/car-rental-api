FactoryBot.define do
    factory :user do
      username { Faker::Internet.username(specifier: 3).uniqueness }
      password { Faker::Internet.password(min_length: 8) }
    end
end