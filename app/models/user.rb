class User < ApplicationRecord
  belongs_to :room
  has_many :likes
  has_many :things, through: :likes
end
