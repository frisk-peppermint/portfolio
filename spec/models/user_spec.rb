require 'rails_helper'
  
  RSpec.describe User, type: :model do
    it "is valid with a first name, last name, email, and password" do
      user = build(:user, name: " " )
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
   end
 
    it "ユーザーは名前、もしくわパスワードが重複していても作成可能" do
      user1 = create(:user)
      user2 = create(:user, name: "atsushi", password: "password")
      expect(user2).to be_valid
    end
    
    it "ユーザー作成時はパスワードがなければ登録できない" do
      user = User.new(name: "atsushi", password: "")
      expect(user).not_to be_valid
    end
   
    it "新規登録の際、確認用のパスワードが間違っているとエラーを起こす" do
      user = User.new(name: "atushi", password: "password", password_confirmation: "passwor") 
      expect(user).not_to be_valid
    end
    
    it "ユーザー名が５１文字以上の場合は登録できない" do
      user = User.new(name: "a" * 51, password: "password")
      expect(user.invalid?).to be true
    end
   
    it "ユーザーを削除すると予約も消える" do
      user = User.create(name: "atsushi", password: "password")
      user.timetables.create(hour: "9", minute: "30")
      expect{ user.destroy }.to change{ Timetable.count }.by(-1)
    end
    
    it '#name' do
      user = create(:user)
      expect(user.name).to eq 'atsushi'
    end
    
    
  
end