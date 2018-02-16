class Lecture < ApplicationRecord
  has_many :article_insertions, class_name: 'ArticleLectureInsertion'
  has_many :articles, through: :article_insertions
  belongs_to :workshop

  validates :title, presence: true
  validates :number, presence: true
end
