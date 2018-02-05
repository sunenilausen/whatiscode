class Lecture < ApplicationRecord
  belongs_to :workshop

  validates :title, presence: true
  validates :number, presence: true
end
