json.extract! lecture, :id, :number, :title, :body, :workshop_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
