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

ApplicationRecord.connection.reset_pk_sequence!('art_shares')
ApplicationRecord.connection.reset_pk_sequence!('artworks')
ApplicationRecord.connection.reset_pk_sequence!('users')

ApplicationRecord.transaction do
	puts 'Loading art_shares...'
	require_relative 'data/art_shares.rb'
	puts 'Loading artworks...'
	require_relative 'data/artworks.rb'
	puts 'Loading users...'
	require_relative 'data/users.rb'
	puts 'Done!'