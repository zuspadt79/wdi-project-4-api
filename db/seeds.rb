# rails db:drop db:create db:migrate db:seed

User.destroy_all

u1 = User.create!(username: "sam", email: "sam@sam.com", password: "password", password_confirmation: "password", image: "http://fillmurray.com/300/300")
