class BrandsStandards < ActiveRecord::Migration[5.0]
  def change

    #中间表 规格和品牌的中间表
    create_join_table :standards, :brands

  end
end
