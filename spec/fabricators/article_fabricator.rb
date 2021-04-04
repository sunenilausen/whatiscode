Fabricator(:article) do
  title { Faker::Lorem.words(3) }
  key { Faker::Lorem.word }
end