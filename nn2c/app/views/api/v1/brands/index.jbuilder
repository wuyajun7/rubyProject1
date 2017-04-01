json.status 200
json.notice 'success'
json.data do
  json.brands @brands.each do |brand|
    json.brand_id brand.id
    json.brand_name brand.name
    json.brand_pinyin brand.pinyin
    json.brand_image brand.photo.image.url
  end
end