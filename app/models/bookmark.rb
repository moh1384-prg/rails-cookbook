class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :list
end
