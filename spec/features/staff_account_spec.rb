require 'rails_helper'
RSpec.feature "スタッフ", type: :feature do
  
  scenario "ログインとログアウトができるか" do
    staff = create(:staff)
    
    visit stafflogin_path
    fill_in "staff_email", with: "tokunaga@gmail.com"
    fill_in "staff_password", with: "password"
    find('#rspec').click
    click_on "アカウント"
    click_on "ログアウト"
    
    expect(page).to have_content 'Thank you for comming!!'
  end
  
  scenario "スタッフ情報を変更できるか" do
    staff = create(:staff)
    
    visit stafflogin_path
    fill_in "staff_email", with: "tokunaga@gmail.com"
    fill_in "staff_password", with: "password"
    find('#rspec').click
    click_on "アカウント"
    click_on "スタッフ情報変更"
    fill_in 'staff_name', with: 'hoge'
    fill_in 'staff_email', with: 'hogehoge@gmail.com'
    fill_in 'staff_password_confirmation', with: 'hogehoge'
    click_on '変更を保存'
    expect(page).to have_content 'スタッフ情報を変更しました'
  end
  
  scenario "スタッフを削除できるか" do
  staff = create(:staff)
  other_staff = create(:staff, name: "atsushi", email: "atsushi@gmail.com") 
  
    visit stafflogin_path
    fill_in "staff_email", with: "tokunaga@gmail.com"
    fill_in "staff_password", with: "password"
    find('#rspec').click
    click_on "スタッフ一覧"
    click_on "削除"
    expect(page).to have_content "スタッフを削除しました"
  end
  
  scenario "患者様を検索できるか" do
    user = create(:user)
    visit users_path
    fill_in 'search', with: 'atsushi'
    click_on '検索'
    expect(page).to have_content 'atsushi'
  end
end