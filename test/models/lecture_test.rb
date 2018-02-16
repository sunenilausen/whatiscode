require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  let (:lecture) { Fabricate(:lecture) }

  it 'can have articles through article insertions' do
    article_insertion = Fabricate(:article_lecture_insertion)
    lecture.update(article_insertions: [article_insertion])

    assert_equal article_insertion, lecture.article_insertions.first
    assert_equal article_insertion.article, lecture.articles.first
  end
end
