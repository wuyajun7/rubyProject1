class CreateCarModels < ActiveRecord::Migration[5.0]
  def change
    create_table :car_models do |t|

      #车型
      t.string :name
      t.integer :status
      t.belongs_to :standard, index: true #创建standard 表的外键
      t.belongs_to :brand, index: true #创建brand 表的外键
      t.belongs_to :firm, index: true #创建firm 表的外键

      t.timestamps
    end
  end
end
