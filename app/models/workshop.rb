class Workshop < ApplicationRecord
  has_many :lectures

  validates :title, presence: true
  validates :key, presence: true
end
