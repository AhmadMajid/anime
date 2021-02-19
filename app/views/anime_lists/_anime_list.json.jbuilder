json.extract! anime_list, :id, :title, :description, :created_at, :updated_at
json.url anime_list_url(anime_list, format: :json)
