class Showcase < ApplicationRecord
  has_and_belongs_to_many :projects, -> { order(:created_at) }

  validates :title, presence: true
  validates :description, presence: true
  validates :released_at, presence: true

  def image_url
    return self[:image_url] if self[:image_url].present?
    ActionController::Base.helpers.image_url "hack-logo.png"
  end
end
