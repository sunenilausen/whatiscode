class Workshop < ApplicationRecord
  acts_as_paranoid

  has_many :lectures
  has_many :articles, through: :lectures

  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  def image
    return image_url if image_url.present?
    ActionController::Base.helpers.image_url "hack-logo.png"
  end
end
