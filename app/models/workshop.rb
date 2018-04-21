class Workshop < ApplicationRecord
  acts_as_paranoid

  has_many :lectures
  has_many :articles, through: :lectures

  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  def image_url
    return self[:image_url] if self[:image_url]
    ActionController::Base.helpers.image_url "hack-logo.png"
  end
end
