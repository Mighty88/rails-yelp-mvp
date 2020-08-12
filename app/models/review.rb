class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: { in: (0...6) }
end

# validates :points, numericality: true
#   validates :games_played, numericality: { only_integer: true
