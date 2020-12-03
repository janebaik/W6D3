# == Schema Information
#
# Table name: art_shares
#
#  id         :bigint           not null, primary key
#  artwork_id :integer          not null
#  viewer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Add a through association from shared_artworks on User. 
# User#shared_artworks

class ArtShare < ApplicationRecord

    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork
    
    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User

end
