class Thing < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def self.tags
    Thing.all.pluck(:tag).uniq
  end
end
