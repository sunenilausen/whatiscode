class Workshop < ApplicationRecord
  acts_as_paranoid

  has_many :lectures
  has_many :articles, through: :lectures

  validates :title, presence: true
  validates :key, presence: true, uniqueness: true
end
