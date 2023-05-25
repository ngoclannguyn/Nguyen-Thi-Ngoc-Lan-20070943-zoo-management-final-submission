json.extract! appointment, :id, :date, :numberofvisitor, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
