json.extract! animal, :id, :animal_name, :person_name, :image_url, :created_at, :updated_at
json.url animal_url(animal, format: :json)
