# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Staff.create!(name: "徳永奨",
             email: "tokunaga@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)
             
Staff.create!(name: "杉盛功",
             email: "sugimori@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)
                          
Staff.create!(name: "湯浅夏樹",
             email: "yuasa@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)

Staff.create!(name: "高橋優希",
             email: "takahashi@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)
             
Staff.create!(name: "小林絵里佳",
             email: "kobayashi@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)
             
Staff.create!(name: "加藤桃華",
             email: "katou@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)
                                                    
Staff.create!(name: "矢吹百香",
             email: "yabuki@gmail.com",
             password:              "password",
             password_confirmation: "password",
             admin: false)
             
#99.times do |n|
#  name  = Faker::Name.name
#  email = "example-#{n+1}@railstutorial.org"
#  password = "password"
#  Staff.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password)
#end

#staffs = Staff.order(:created_at).take(6)
#50.times do
#  content = Faker::Lorem.sentence(5)
#  staffs.each { |staff| staff.microposts.create!(content: content) }
#end

#[
#  ['test1@test.com', '111111', 'テスト太郎'],
#  ['test2@test.com', '222222', 'テスト徹子']
#].each do |mail, pass, name|
#  User.create!(
#    { email: mail, password: pass, name: name }
#  )
  
#[
#  ['9:00~9:30', '', '', '', ''],
#  ['9:30~10:00', '', '', '', ''],
#  ['10:00~10:30', '', '', '', ''],
#  ['10:30~11:00', '', '', '', ''],
#  ['11:00~11:30', '', '', '', ''],
#  ['11:30~12:00', '', '', '', ''],
#  ['15:00~15:30', '', '', '', ''],
#  ['15:30~16:00', '', '', '', ''],
#  ['16:00~16:30', '', '', '', ''],
#  ['16:30~17:00', '', '', '', ''],
#  ['17:00~17:30', '', '', '', ''],
#  ['17:30~18:00', '', '', '', ''],
#  ['18:00~18:30', '', '', '', ''],
#  ['18:30~19:00', '', '', '', ''],
#  ['19:00~19:30', '', '', '', ''],
#  ['19:30~20:00', '', '', '', ''],
#  ['20:00~20:30', '', '', '', '']
#].each do |time, nothing1, nothing2, nothing3, nothing4|
#  Timetable.create!(
#    { time: time, reservation1: nothing1,
#                  reservation2: nothing2,
#                  reservation3: nothing3,
#                  reservation4: nothing4 }
#    )
#  end