json.extract! customer, :id, :f_name, :l_name, :ccinfo, :created_at, :updated_at
json.url customer_url(customer, format: :json)
