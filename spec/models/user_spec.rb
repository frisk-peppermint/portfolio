require 'rails_helper'
  
  RSpec.describe User, type: :model do
    it "is valid with a first name, last name, email, and password" do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
   end
 
    it "ユーザーは名前、もしくわパスワードが重複していても作成可能" do
      User.create(name: "atsushi", password: "password")
      user = User.new(name: "atsushi", password: "password")
      expect(user).to be_valid
    end
    
    it "ユーザー作成時はパスワードがなければ登録できない" do
      user = User.new(name: "atsushi", password: "")
      expect(user).not_to be_valid
    end
   
    it "新規登録の際、確認用のパスワードが間違っているとエラーを起こす" do
      user = User.new(name: "atushi", password: "password", password_confirmation: "passwor") 
      expect(user).not_to be_valid
    end
    
    it "ユーザーを削除すると予約も消える" do
      user = User.create(name: "atsushi", password: "password")
      user.timetables.create(hour: "9", minute: "30")
      expect{ user.destroy }.to change{ Timetable.count}.by(-1)
    end
   it "is invalid with a duplicate email address"
   # ユーザーのフルネームを文字列として返すこと
   it "returns a user's full name as a string"
 end