class Article < ApplicationRecord
  acts_as_paranoid

  has_and_belongs_to_many :lectures
  
  validates :title, presence: true
  validates :key, presence: true, uniqueness: true
end
