class Category < ApplicationRecord
  has_many :articles

  validate :title, presence: true
end
