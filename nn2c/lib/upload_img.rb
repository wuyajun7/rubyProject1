class UploadImg

  CAR_MODEL_PARENT_PATH = "/users/peter/Desktop/car_model_nn2c_imgs"
  INDEX_START = 40
  INDEX_END = 61

  def self.upload_car_model_img
    for i in INDEX_START..INDEX_END
      cm_img_path = CAR_MODEL_PARENT_PATH+"/"+"#{i}.jpg"

      cm_img_file = File.open(cm_img_path)
      car_model = CarModel.find(i)
      car_model.build_photo(image: cm_img_file)
      if car_model.save
        puts "success #{i}"
      else
        puts "failure #{i}"
      end
    end
  end
end