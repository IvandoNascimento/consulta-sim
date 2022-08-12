json.extract! address, :id, :CEP, :city, :neighborhood, :street, :complement, :created_at, :updated_at
json.url address_url(address, format: :json)
