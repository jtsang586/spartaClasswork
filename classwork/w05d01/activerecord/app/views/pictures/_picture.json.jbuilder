json.extract! picture, :id, :name, :description, :artist, :string, :url, :created_at, :updated_at
json.url picture_url(picture, format: :json)
