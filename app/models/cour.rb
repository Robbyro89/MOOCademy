class Cour < ApplicationRecord
  validates :titre, presence: true, length: { maximum: 50 },
                    uniqueness: true
  validates :description, presence: true, length: { maximum: 255 }
  has_many :lesson
end
