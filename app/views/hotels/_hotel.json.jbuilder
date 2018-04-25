json.extract! hotel, :id, :name, :address, :description, :phone_number, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
