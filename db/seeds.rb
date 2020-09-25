# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# 20.times do
#     Post.create!(
#       title: Faker::Book.title,
#       content: Faker::Game.platform,
#       auther: Faker::Name.name   
#     )
# end

psychology = Category.create(name: "心理学")
psychology_1 = psychology.children.create(name: "仕事、ビジネス")
psychology_1.children.create([{name: "心理"},{name: "テクニック"},{name: "用語"}])
psychology_2 = psychology.children.create(name: "恋愛、対人関係")
psychology_2.children.create([{name: "心理"},{name: "テクニック"},{name: "用語"}])
psychology_3 = psychology.children.create(name: "日常生活、マインド")
psychology_3.children.create([{name: "心理"},{name: "テクニック"},{name: "用語"}])
psychology_4 = psychology.children.create(name: "お金")
psychology_4.children.create([{name: "心理"},{name: "テクニック"},{name: "用語"}])
psychology_5 = psychology.children.create(name: "おすすめ、有名")
psychology_5.children.create([{name: "心理"},{name: "テクニック"},{name: "用語"}])
psychology_6 = psychology.children.create(name: "心理学用語一覧")
psychology_6.children.create([{name: "全て"},{name: "有名、おすすめ"}])


brain_science = Category.create(name: "脳理学")
brain_science_1 = brain_science.children.create(name: "脳についてのまとめ")
brain_science_1.children.create([{name: "脳のしくみ"},{name: "関係性"},{name: "学習、勉強法"}])
brain_science_2 = brain_science.children.create(name: "脳化学とは")
