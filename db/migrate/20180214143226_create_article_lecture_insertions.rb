class CreateArticleLectureInsertions < ActiveRecord::Migration[5.1]
  def change
    create_table :article_lecture_insertions do |t|
      t.integer :number
      t.belongs_to :article, index: true
      t.belongs_to :lecture, index: true
      
      t.timestamps
    end
  end
end
