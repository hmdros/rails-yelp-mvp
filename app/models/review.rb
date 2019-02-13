class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: true, inclusion: { in: (0..5).to_a }
  validates :content, presence: true
end
