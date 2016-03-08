json.array!(@group_functionalities) do |group_functionality|
  json.extract! group_functionality, :id, :group_id, :functionality_id
  json.url group_functionality_url(group_functionality, format: :json)
end
