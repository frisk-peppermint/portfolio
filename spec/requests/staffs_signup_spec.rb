require 'rails_helper'
RSpec.describe 'Staffs signup', type: :request do
  
  def is_logged_in_as_staff?
    !session[:staff_id].nil?
  end
  
  example 'スタッフ登録後自動的にログインされるか' do
    get staffsignup_path
    expect {
      post staffs_path, params: { staff: { name:                  'atsushi',
                                           email:                 'hogehoge@gmail.com',
                                           password:              'password',
                                           password_confirmation: 'password' } }
    }.to change(Staff, :count).by(1)
    
    redirect_to @staff
    follow_redirect!
    assert_template 'staffs/show'
    assert is_logged_in_as_staff?  #まだ完成していません。ここだけエラーがでます。
  end
    
  
end