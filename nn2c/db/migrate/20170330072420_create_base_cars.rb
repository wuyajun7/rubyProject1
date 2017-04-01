class CreateBaseCars < ActiveRecord::Migration[5.0]
  def change
    create_table :base_cars do |t|

      #款式
      t.string :style
      t.integer :status
      # t.string :outer_color, array: true, default: []
      # t.string :inner_color, array: true, default: []
      t.float :base_price
      t.integer :year
      t.string :NO
      t.belongs_to :standard, index: true #创建standard 表的外键
      t.belongs_to :brand, index: true #创建brand 表的外键
      t.belongs_to :car_model, index: true #创建car_model 表的外键

      t.timestamps
    end
  end
end
