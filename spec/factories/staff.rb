FactoryBot.define do
  factory :staff do
    name { 'tokunaga'}
    email { 'tokunaga@gmail.com' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
