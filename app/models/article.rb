class Article < ApplicationRecord
  acts_as_paranoid

  has_many :article_insertions, class_name: 'ArticleLectureInsertion', inverse_of: :article
  has_many :lectures, through: :article_insertions
  belongs_to :category, optional: true
  
  validates :title, presence: true
  validates :key, presence: true, uniqueness: true

  scope :documentation, -> { where(documentation: true) }

  def preview_image
    return preview_image_url if preview_image_url.present?
    return category.image if category.present?
    ActionController::Base.helpers.image_url "hack-logo.png"
  end

  def preview
    return self[:preview] if self[:preview]
    body
  end

  def preview_code
    return "" if self[:preview_code].nil?
    self[:preview_code]
  end
end
