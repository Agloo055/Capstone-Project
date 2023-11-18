class ColSet < ApplicationRecord
  belongs_to :user
  default_scope { order(favorite: :asc)}
end
