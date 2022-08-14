json.extract! doctor, :id, :name, :cpf, :email, :specialty, :crm, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
