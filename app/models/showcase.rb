class Showcase < ApplicationRecord
  has_and_belongs_to_many :projects, -> { order(:created_at) }

  validates :title, presence: true
  validates :description, presence: true
  validates :released_at, presence: true
end
