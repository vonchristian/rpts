json.extract! taxpayer, :id, :first_name, :middle_name, :last_name, :suffix, :mobile, :created_at, :updated_at
json.url taxpayer_url(taxpayer, format: :json)