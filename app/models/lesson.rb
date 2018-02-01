class Lesson < ApplicationRecord
  validates :titre, presence: true, length: { maximum: 50 },
                    uniqueness: true
  validates :description, presence: true, length { minimum: 5 }
  belongs_to :cour
end
