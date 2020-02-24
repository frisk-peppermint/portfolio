FactoryBot.define do
  factory :user do
    name { 'atsushi' }
    password { 'password' }
    password_confirmation { 'password' }
  end
  
  factory :other_user do
    name { 'hoge' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
