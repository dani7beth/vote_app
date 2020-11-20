class Room < ApplicationRecord
    has_many :users
    has_many :likes

    def get_things
        Thing.all.where(tag: self.tag)
    end
end
