class Category < ApplicationRecord
  has_many :articles

  validates :title, presence: true

  def image_url
    return self[:image_url] if self[:image_url]
    ActionController::Base.helpers.image_url "hack-logo.png"
  end
end
