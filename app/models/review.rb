class Review < ApplicationRecord
	RATING = (0..5)
	belongs_to :restaurant
	validates :content, presence: true
	validates :rating, inclusion: { in: RATING, allow_nil: false }, presence: true, numericality: { only_integer: true }

end
