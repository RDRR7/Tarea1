class User < ApplicationRecord
	has_many :articles, dependent: :destroy

	validates :username, presence: true
	validates :password, presence: true, length: { minimum: 5 }
end
