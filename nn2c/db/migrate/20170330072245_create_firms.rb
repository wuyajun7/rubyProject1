class CreateFirms < ActiveRecord::Migration[5.0]
  def change
    create_table :firms do |t|

      #厂商
      t.string :name
      t.belongs_to :brand ,index: true #创建brand 表的外键

      t.timestamps
    end
  end
end
