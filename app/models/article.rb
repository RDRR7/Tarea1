class Article < ApplicationRecord
	belongs_to :user

	validates :title, presence: true
	validates :content, presence: true, length: { maximum: 240 }
end
