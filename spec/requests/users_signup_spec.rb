require 'rails_helper'
RSpec.describe 'Users signup', type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:other_user) { FactoryBot.create(:user) }
  
  def is_logged_in?
    !session[:user_id].nil?
  end
  
  
  context "as other user" do 
    it "does not update the user" do
      user1 = create(:user, id: '100')
      get signup_path
      post users_path, params: { user: { id:                    '100',
                                           name:                  'hogehoge',
                                           password:              'password',
                                           password_confirmation: 'password' }}
      redirect_to @user
      get '/users/100'
      expect(response.status).to eq 302
    end
  end
end