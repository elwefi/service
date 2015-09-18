json.array!(@admin_governorates) do |admin_governorate|
  json.extract! admin_governorate, :id
  json.url admin_governorate_url(admin_governorate, format: :json)
end
