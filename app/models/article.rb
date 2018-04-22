class Article < ApplicationRecord
  acts_as_paranoid

  has_and_belongs_to_many :lectures
  belongs_to :category, optional: true
  
  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  def preview_image
    return preview_image_url if preview_image_url
    return category.image if category
    ActionController::Base.helpers.image_url "hack-logo.png"
  end

  def preview
    return self[:preview] if self[:preview]
    body[0,255]
  end
end
