Fabricator(:lecture) do
  title { Faker::Lorem.words(3) }
  workshop { Fabricate(:workshop) }
end