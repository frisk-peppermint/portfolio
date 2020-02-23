require 'rails_helper'
RSpec.feature "Reservation", type: :feature do
  
  scenario "ログインとログアウトができるか" do
    user = create(:user)
    
    visit login_path
    fill_in "name", with: "atsushi"
    fill_in "password", with: "password"
    click_on "Log in"
    click_on "アカウント"
    click_on "ログアウト"
    
    expect(page).to have_content 'Thank you for comming!!'
  end
  
  scenario "予約が取れるか" do
    user = create(:user)
    
    visit login_path
    fill_in "name", with: "atsushi"
    fill_in "password", with: "password"
    click_on "Log in"
    click_on "予約状況"
    select '9時', from: 'hour'
    select '30分', from: 'minute'
    click_on "Create Timetable"
    expect(page).to have_content 'ご予約ありがとうございます'
  end
  
  scenario "予約が取り消せるか" do
    user = create(:user)
    
    visit login_path
    fill_in "name", with: "atsushi"
    fill_in "password", with: "password"
    click_on "Log in"
    click_on "予約状況"
    select '9時', from: 'hour'
    select '30分', from: 'minute'
    click_on "Create Timetable"
    click_on "atsushiさんのご予約"
    click_on "予約を取り消す"
    expect(page).to have_content '予約が取り消されました。'
  end
  
  scenario "ユーザー情報を変更できるか" do
    user = create(:user)
    
    visit login_path
    fill_in "name", with: "atsushi"
    fill_in "password", with: "password"
    click_on "Log in"
    click_on "アカウント"
    click_on "アカウント編集"
    fill_in 'new_name', with: 'hoge'
    fill_in 'new_password', with: 'hogehoge'
    fill_in 'new_password_confirmation', with: 'hogehoge'
    click_on '変更を保存'
    expect(page).to have_content 'アカウント情報が更新されました'
  end
end