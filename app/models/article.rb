class Article < ApplicationRecord
  acts_as_paranoid

  has_and_belongs_to_many :lectures
  belongs_to :category, optional: true
  
  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  def preview_image_url
    return self[:preview_image_url] if self[:preview_image_url]
    category.image_url if category
    ActionController::Base.helpers.image_url "hack-logo.png"
  end

  def preview
    return self[:preview] if self[:preview]
    body[0,255]
  end
end
