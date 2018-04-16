class Event < ApplicationRecord
	belongs_to :user
	validates :description, presence: :true
	validates :title, presence: :true
	validates :initime, presence: :true
	validates :endtime, presence: :true
	validates :date, presence: :true

  mount_uploader :photo, PhotoUploader
end
