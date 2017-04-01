class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|

      #品牌
      t.string :name
      t.integer :status
      t.string :pinyin

      t.timestamps
    end
  end
end
