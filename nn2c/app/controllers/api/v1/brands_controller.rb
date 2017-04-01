class Api::V1::BrandsController < ApplicationController

  def index
    @brands = Brand.all.includes(:photo)
  end

  def get_car_models
    @brand = Brand.find(params[:brand_id])
    # @car_models = @brand.car_models.includes(:firm) #增加 includes 解决 n+1 查询问题
    @car_models = @brand.car_models.includes(:firm).references(:firm).reorder('firms.name asc,car_models.name asc')
    # @car_models = @brand.car_models.joins(:firm).reorder('firms.name asc,car_models.name asc')
    @car_models_group = @car_models.group_by { |c| c.firm.name } # 按 firm.name 分组 返回 hash  key 为 firm的name
  end
end
