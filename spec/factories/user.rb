FactoryBot.define do
    factory :user do
      username { Faker::Internet.unique.username(specifier: 3) }
      password { Faker::Internet.password(min_length: 8) }
    end
end