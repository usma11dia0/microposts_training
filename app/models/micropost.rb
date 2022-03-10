class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favors, dependent: :destroy
  has_many :favorites, through: :favors, source: :user
end
