class Category < ApplicationRecord
  has_many :articles

  validates :title, presence: true

  def image
    return image_url if image_url
    ActionController::Base.helpers.image_url "hack-logo.png"
  end
end
