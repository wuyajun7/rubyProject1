json.status 200
json.notice 'success'
json.data do
  json.standards @standards do |standard|
    json.standard_id standard.id
    json.standard_name standard.name
  end
end