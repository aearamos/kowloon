class Content < ApplicationRecord
	belongs_to :user
	validates :description, presence: :true
	validates :title, presence: :true

  mount_uploader :photo, PhotoUploader
end
