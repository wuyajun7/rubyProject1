json.status 200
json.notice 'success'
json.data do
  json.base_car @base_cars do |base_car|
    json.base_car_id base_car.id
    json.base_car_name base_car.style
    json.base_car_year base_car.year
  end
end

