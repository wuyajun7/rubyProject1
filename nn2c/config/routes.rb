Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: 'json'} do #defaults: {format: 'json'} 默认返回json格式数据
    namespace :v1 do
      resources :standards, only: [:index] #分类 一个module对应一个resources 指定名称 与module一致 的url
      #do # only: [:index, :new, :create] 填写 默认7个方法中的那几个方法
      # member do # 单一资源url, 默认包含传入的id
      #   get :standard_list
      # end
      #
      # collection do # 一组资源url
      #
      # end
      #end

      resources :brands, only: [:index] do
        member do
          get :get_car_models
        end

        collection do
          get :get_car_models
        end
      end

      resources :car_models, only: [:index]

    end
  end
end
