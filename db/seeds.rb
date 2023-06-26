puts "Cleaning database..."

User.destroy_all

denver = User.create!(first_name: "Denver",last_name: "Falbala", email: "denver@mail.com", password: "secret")

file = File.open(Rails.root.join("/denver.jpg"))
denver.photo.attach(io: file, filename: "denver.jpg", content_type: "image/jpg")
denver.save!
