class Lesson < ApplicationRecord
  belongs_to :cours
  validates :titre, presence: true, length: { maximum: 50 },
  validates :description, presence: true, length { minimum: 5 }
end
