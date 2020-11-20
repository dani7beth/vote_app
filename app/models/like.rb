class Like < ApplicationRecord
  belongs_to :user
  belongs_to :thing
  belongs_to :group
end
