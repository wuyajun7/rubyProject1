json.status 200
json.notice 'success'
json.data do
  json.firms_car_models  @car_models_group do |k,v|
    json.firm_name k
    json.car_models v do |car_model|
      json.car_model_id car_model.id
      json.car_model_name car_model.name
      json.base_car_img car_model.photo.image.url
    end
  end
end

