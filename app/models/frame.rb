class Frame < ApplicationRecord
  belongs_to :user
  has_many :questions
end
