# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'seeding users'

U1 = User.create(  name: "Ronald Guardado", 
    username:  "rguardado",
    email:  "rguardado@gmail.com",
    password: "admin")

10.times do
    User.create(
        name: Faker::Name.unique.name, 
        username: Faker::Internet.username, 
        email: Faker::Internet.free_email, 
        password: "admin"
    )
end
puts 'done seeding users'

puts 'seeding employees'
5.times do
    Employee.create(
        name: Faker::Superhero.name, 
        description: Faker::Hipster.sentences(number: 1)
    )
end
puts 'done seeding employees'

puts 'seeding services'

s1 = Service.create(
    name: "RECORDING SESSION", 
    description: "Create and capture your next sounds with experienced professionals and the latest recording technologies at 
    Treehouse Studio. You’ll have your pick of equipment — everything from microphones to electronic mixing consoles. 
    Contact us to set up a time for your Recording session today! The world of sound is at your fingertips.", 
    hourly_rate: 55, 
    duration: 2,
)
s2 = Service.create(
    name: "PREMIUM RECORDING SESSION", 
    description: "Create and capture your next sounds with experienced professionals and the latest recording technologies at 
    Treehouse Studio. Includes Recording Session as well as In session Mixing", 
    hourly_rate: 70, 
    duration: 2,
)
s3 = Service.create(
    name: "MIXING", 
    description: "Looking to bring your creative concoctions to life? Book your Mixing session at 
    Treehouse Studio and work with our experienced team to realize your unique sound. 
    Together we’ll collaborate throughout the entire production process to develop a final recording you are proud of and which your fans will enjoy. 
    Contact us to start Mixing today.", 
    hourly_rate: 300, 
    duration: 2,
)
s4 = Service.create(
    name: "LIVE SOUND MIXING", 
    description: "Book our experienced Sound Engineers to bring your next live show to life", 
    hourly_rate: 300, 
    duration: 2,
)
s5 = Service.create(
    name: "MASTERING", 
    description: "Want your Record Mastered from the comfort and convenience of a professional MasteringStudio? 
    Reserve your next Mastering session with us and get access to all of our state-of-the-art equipment and studio space. 
    Contact us to find out more about our Mastering rates and availabilities. Don’t wait too long, our calendar fills up fast.", 
    hourly_rate: 75, 
    duration: 2,
)
puts 'done seeding services'


puts 'seeding appointments'


10.times do
    start_time = Faker::Time.between_dates(from: Date.today - 400, to: Date.today, period: :all, format: :default)
    end_time =  Faker::Time.between_dates(from: Date.today - 600, to: Date.today, period: :all, format: :default) 
    Appointment.create(
    start_time: start_time, 
    end_time: end_time,
    date: Faker::Date.between(from: '2021-08-01', to: '2021-11-29'), 
    user_id: rand(1..10), 
    service_id: rand(1..5), 
    employee_id: rand(1..5))
    end
puts 'done seeding appointments'

puts 'seeding reviews'
15.times do
    Review.create(
        title: Faker::Lorem.sentence(word_count: 3), 
        content: Faker::Restaurant.review , 
        rating: rand(1..5), 
        user_id: rand(1..10),
        employee_id: rand(1..5)
    )
end

puts 'done seeding reviews'