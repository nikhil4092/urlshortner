class Link < ApplicationRecord
	validates :url, presence: true
	validates :key, presence: true, uniqueness: true
	validates :description, presence: true, uniqueness: true
end
