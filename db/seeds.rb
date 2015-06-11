User.create!(display_name:  "Example User",
             email: "example@example.org",
             password:              "foobar11",
             password_confirmation: "foobar11")

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@example.org"
  password = "password"
  User.create!(display_name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end