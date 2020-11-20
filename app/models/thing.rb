class Thing < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes

  def self.get_stags
    Thing.all.pluck(:tag).uniq
  end
end
