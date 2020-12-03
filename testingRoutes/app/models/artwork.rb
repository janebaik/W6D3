# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Then add associations connecting an ArtworkShare to both an Artwork 
# and a User (name this association viewer). 
# Add a through association shared_viewers on Artwork.
# Artwork#shared_viewers will return the set of users with whom an artwork has been shared.

class Artwork < ApplicationRecord

    has_many :artshares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artshare
    
    belongs_to :artists,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User
    
    has_many :share_viewers,
        through: :artshares,
        source: :viewer
end
