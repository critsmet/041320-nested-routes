json.extract! planet, :id, :name, :galaxy, :temperature, :moons, :created_at, :updated_at
json.url planet_url(planet, format: :json)
