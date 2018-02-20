Fabricator(:article_lecture_insertion) do
  article { Fabricate(:article) }
  lecture { Fabricate(:lecture) }
  number { 1 }
end