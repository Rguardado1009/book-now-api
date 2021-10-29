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
    email:  "rguardado109@gmail.com",
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
E1 =  Employee.create(
        name: 'Bob Clearmountain', 
        description:"Bob Clearmountain is one of the most acclaimed mixers in the contemporary pop world. Interested in electronics from the time he was young, he took an interest in the recording process after his band recorded their demo at Media Sound Studio in New York. He is known for revolutionizing the industry and popularizing the notion of a mixing engineer being called on to salvage projects, or offer distinctive improvements. He is also famous for being the first mixing engineer to negotiate a royalty for his work. Despite taking advantage of advancements in digital technology, Bob still relies on his analog mixing deck, treating his Pro Tools software like a tape machine. The list of artists he has worked with is exhaustive, and reads like a who’s who of the industry. In addition, he has influenced an entire generation of mix engineers.",
        Knownfor:'
        - Bruce Springsteen
        - David Bowie
        - The Rolling Stones
        - Tina Turner
        - Hall & Oats',
        images: 'https://res.cloudinary.com/airlines/image/upload/v1635358598/Final%20Project%20Assets/Bob_Clearmountain_pfgsta.png'
    )
E2 =  Employee.create(
        name: 'Chris Lord-Alge', 
        description:" Chris Lord-Alge is an American mixing engineer who has 5 Grammys under his belt. His career took off while working for Unique Recording studios in the 1980s. There he performed mixing duties on such classics as the Rocky IV soundtrack, James Brown’s album Gravity (including his famous his “Living In America”), as well as artists such as Chaka Khan, Carly Simon, Tina Turner and the Rolling Stones.
         He is known for his abundant use of compression to control audio dynamics, giving songs a punchy and aggressive sound. This sound is why his work is in such high demand. While compression techniques have always existed as a functional tool, he is is known for pushing the boundaries and using it as a more creative enhancement. His signature style has become so well known that in 2010, Waves Audio released a series of audio plug ins based on his effects chains.",
        Knownfor:'
        - Foo Fighter
        - Green Day
        - Nine Inch Nails
        - U2
        - Bon Jovi',
        images: 'https://res.cloudinary.com/airlines/image/upload/c_scale,h_720,w_1280/v1635358596/Final%20Project%20Assets/Chris_Lord-Alge_dwugqx.jpg'
        )

E3 =  Employee.create(
    name: 'Tony Maserati', 
    description:" Tony Maserati is widely known in the industry for being partly responsible for the distinctive New York hip-hop and R&B sound. He worked at Sigma Sound Studios in New York at the beginning of his mixing career, before going fully independent in 1989. Over the course of his career he has been nominated for 10 Grammys, as well as winning one for working on Sérgio Mendes’s Timeless in 2006. He originally majored in composition at Berklee School of Music in the early 1980s, but switched his major to Music Production and Engineering in 1983 when it was first offered. Songs he has worked on have earned sales over the $100 million mark in total, and the list of artists who have worked with him goes on and on. 
    While originally working on analog gear, he has since developed a hybrid analog-digital approach to use the best of both worlds. His signature sound is so in demand that computer plug-in developer Waves issues the “Tony Maserati Collection” processing bundle.",
    Knownfor:'
    -- Beyonce
    - Mary J Blige
    - Puff Daddy
    - Queen Latifah
    - Notorious B.I.G.',
    images: 'https://res.cloudinary.com/airlines/image/upload/v1635358597/Final%20Project%20Assets/Tony_Maserati_bdwy3p.png'
    )
E4 =  Employee.create(
    name: 'Dave Pensado', 
    description:"Having worked as a studio engineer in Atlanta in the 1970s and 1980s, he has been working out of LA since 1990, mixing between 200 to 250 songs a year for a wide variety of artists. He even hosts his own show about studio engineering techniques called “Pensado’s Place” where he interviews other mixers, artists and producers. He is known for mixes primarily “in the box,” which means he prefers to process audio within his computer instead of using a vast amount of analog outboard equipment.",
    Knownfor:'
    -- Mary J Blige
    - Destiny’s Child
    - Justin Timberlake
    - Christina Aguilera
    - Ice Cube',
    images: 'https://res.cloudinary.com/airlines/image/upload/c_scale,h_720,w_1280/v1635358599/Final%20Project%20Assets/Dave_Pensado_iy73j5.png'
    )
E5 =  Employee.create(
        name: 'Tom Lord-Alge', 
        description:" Tom Lord-Alge is the younger brother of Chris Lord-Alge, and began his career by working as Chris’s assistant at Unique Recording in NYC. His first high level audio engineering job was engineering Steve Winwood’s album Back To the High Life in 1986, earning him a Grammy award. While originally an engineer and then producer, he began to realize that mixing was where his heart was. Like his older brother Chris, he is known for extensive use of compression techniques, as well as mixing with analog gear.
         He is also known for his extensive collection of outboard compressors which impart their own signature sounds to whatever track they’re applied to, or the overall mix as a whole.",
        Knownfor:'
        - Marilyn Manson
        - U2
        - Peter Gabriel
        - The Rolling Stones
        - Oasis',
        images: 'https://res.cloudinary.com/airlines/image/upload/c_fit,e_auto_color,h_720,w_1280/v1635358595/Final%20Project%20Assets/Tom_Lord-Alge_faxhkg.jpg'
        )

puts 'done seeding employees'

puts 'seeding services'

s1 = Service.create(
    name: "RECORDING SESSION", 
    description: "Create and capture your next sounds with experienced professionals and the latest recording technologies at 
    Treehouse Studio. You’ll have your pick of equipment — everything from microphones to electronic mixing consoles. 
    Contact us to set up a time for your Recording session today! The world of sound is at your fingertips.", 
    hourly_rate: 55, 
    duration: 2,
    Image:"https://res.cloudinary.com/airlines/image/upload/v1635131933/Final%20Project%20Assets/TreeHouseRevamp_00069_hoetnw.jpg"
)
s2 = Service.create(
    name: "PREMIUM RECORDING SESSION", 
    description: "Create and capture your next sounds with experienced professionals and the latest recording technologies at 
    Treehouse Studio. Includes Recording Session as well as in session Mixing", 
    hourly_rate: 70, 
    duration: 2,
    Image:"https://res.cloudinary.com/airlines/image/upload/v1635131929/Final%20Project%20Assets/Pic_8_ctkkyu.jpg"
)
s3 = Service.create(
    name: "MIXING", 
    description: "Looking to bring your creative concoctions to life? Book your Mixing session at 
    Treehouse Studio and work with our experienced team to realize your unique sound. 
    Together we’ll collaborate throughout the entire production process to develop a final recording you are proud of and which your fans will enjoy. 
    Contact us to start Mixing today.", 
    hourly_rate: 300, 
    duration: 2,
    Image:"https://res.cloudinary.com/airlines/image/upload/v1635131935/Final%20Project%20Assets/TreeHouseRevamp_00113_uraulj.jpg"
)
s4 = Service.create(
    name: "LIVE SOUND MIXING", 
    description: "Book our experienced Sound Engineers to bring your next live show to life", 
    hourly_rate: 300, 
    duration: 2,
    Image:"https://res.cloudinary.com/airlines/image/upload/v1635133397/Final%20Project%20Assets/BannerPic-Mon-2019-LD-2_1400x1050_ubbj0h.jpg"
)
s5 = Service.create(
    name: "MASTERING", 
    description: "Want your Record Mastered from the comfort and convenience of a professional MasteringStudio? 
    Reserve your next Mastering session with us and get access to all of our state-of-the-art equipment and studio space. 
    Contact us to find out more about our Mastering rates and availabilities. Don’t wait too long, our calendar fills up fast.", 
    hourly_rate: 75, 
    duration: 2,
    Image:"https://res.cloudinary.com/airlines/image/upload/v1635133631/Final%20Project%20Assets/Audio-Mastering-Equipment-326x217_2x_rphust.jpg"
)
puts 'done seeding services'


# puts 'seeding appointments'


# 10.times do
#     start_time = Faker::Time.between_dates(from: Date.today - 400, to: Date.today, period: :all, format: :default)
#     end_time =  Faker::Time.between_dates(from: Date.today - 600, to: Date.today, period: :all, format: :default) 
#     Appointment.create(
#     start_time: start_time, 
#     end_time: end_time,
#     date: Faker::Date.between(from: '2021-08-01', to: '2021-11-29'), 
#     user_id: rand(1..10), 
#     service_id: rand(1..5), 
#     employee_id: rand(1..5))
#     end
# puts 'done seeding appointments'

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