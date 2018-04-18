class Article < ApplicationRecord
  acts_as_paranoid

  has_and_belongs_to_many :lectures
  belongs_to :category, optional: true
  
  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  def preview_image
    return preview_image_url if preview_image_url
    return category.image_url if category&.image_url
    return default_image_url
  end

  def default_image_url

  end
end
