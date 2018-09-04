class Project < ApplicationRecord
  has_and_belongs_to_many :showcases, -> { order(:released_at) }

  validates :title, presence: true
  validates :description, presence: true
  validates :completed_at, presence: true
end
