json.extract! pictures_controller, :id, :name, :description, :artist, :string, :url, :created_at, :updated_at
json.url pictures_controller_url(pictures_controller, format: :json)
