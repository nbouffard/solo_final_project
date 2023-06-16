class Recipe < ApplicationRecord
  belongs_to :user
  has_many :events
  validates :title, :description, :ingredients, :category, :cuisine,
            :prep_time, :total_time, :difficulty, :servings, presence: true
end
