require 'rails_helper'
RSpec.describe 'Users signup', type: :request do
  
  def is_logged_in?
    !session[:user_id].nil?
  end
  
  example 'ユーザー登録後自動的にログインされるか' do
    get signup_path
    expect {
      post users_path, params: { user: { name:                  'atsushi',
                                         password:              'password',
                                         password_confirmation: 'password' } }
    }.to change(User, :count).by(1)
    
    redirect_to @user
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
end