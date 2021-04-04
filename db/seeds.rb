# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@example.com", password: "admin", admin: true)
workshop = Workshop.create(title: "Test Workshop", key: "test-workshop")
lecture = Lecture.create(title: "Test Lecture", number: 1, workshop: workshop, body: "Lecture Body")
article = Article.create(title: "Test Article", key: "test-article", body: "Article Body", active: true)
ArticleLectureInsertion.create(article: article, lecture: lecture, number: 0)
