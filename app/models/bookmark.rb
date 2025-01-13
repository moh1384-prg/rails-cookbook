class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe

  validates :recipe_id, uniqueness: { scope: :category_id }
  validates :comment, length: { minimum: 6, too_short: "must have at least 6 charachters" }
end
