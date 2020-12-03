# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ArtShare.destroy_all
Artwork.destroy_all
User.destroy_all

da_vinchi = User.create!(username:'Leonardo Da Vinchi')
michaelango = User.create!(username:'Michaelango')
    random_person =  User.create!(username:'Max')
    second_random = User.create!(username:'Bob')

monalisa = Artwork.create!(title:'Mona Lisa', image_url: '#1', artist_id: da_vinchi.id)
david = Artwork.create!(title:'Drawing Night Sky', image_url: '#2', artist_id: michaelango.id)
   

ArtShare.create!(artwork_id:monalisa.id, viewer_id: random_person.id) 
ArtShare.create!(artwork_id:david.id, viewer_id: second_random.id) 
    

        
