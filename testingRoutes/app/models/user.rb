# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

#  a user cannot have a single Artwork shared with them more than once.

class User < ApplicationRecord

    validates :shared_artworks, unique: true
    has_many :viewers,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :Artshare

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :Artwork

    has_many :shared_artworks,
        through: :viewers,
        source: :artwork


end
