json.extract! lesson, :id, :name, :time, :teacher, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
