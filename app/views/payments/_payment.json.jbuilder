json.extract! payment, :id, :amount, :paymentmethod, :paymentdate, :created_at, :updated_at
json.url payment_url(payment, format: :json)
