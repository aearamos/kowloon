class Cocktail < ApplicationRecord
	belongs_to :user
	validates :description, presence: :true
	validates :title, presence: :true
end
