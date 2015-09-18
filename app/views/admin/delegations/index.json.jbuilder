json.array!(@admin_delegations) do |admin_delegation|
  json.extract! admin_delegation, :id
  json.url admin_delegation_url(admin_delegation, format: :json)
end
