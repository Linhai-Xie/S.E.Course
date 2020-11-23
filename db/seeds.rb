User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             )

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               )
end

users = User.order(:created_at).take(6)
content = Faker::Lorem.sentence(5)
users.each { |user| user.microposts.create!(content: content ,name: "XXX",institute:"XXXXX",age:18,gender:0) }
