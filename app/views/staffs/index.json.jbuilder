json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name
  json.url staff_url(staff, format: :json)
end
