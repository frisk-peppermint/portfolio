FactoryBot.define do
  factory :staff, class: Staff do
    name { 'tokunaga' }
    email { 'tokunaga@gmail.com' }
    password { 'password' }
    password_confirmation { 'password' }
    admin { true }
  end
end
