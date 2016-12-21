class Secret < ActiveRecord::Base
	has_many :users, through: :likes
	belongs_to :user
	has_many :likes, dependent: :destroy
end
