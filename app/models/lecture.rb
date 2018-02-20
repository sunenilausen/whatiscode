class Lecture < ApplicationRecord
  acts_as_paranoid

  has_many :article_insertions, class_name: 'ArticleLectureInsertion', inverse_of: :lecture
  accepts_nested_attributes_for :article_insertions, reject_if: :all_blank, allow_destroy: true

  has_many :articles, through: :article_insertions
  belongs_to :workshop

  validates :title, presence: true
  validates :number, presence: true
end
