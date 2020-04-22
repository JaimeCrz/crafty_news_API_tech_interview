FactoryBot.define do
  factory :user do
    email { "random@mail.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
