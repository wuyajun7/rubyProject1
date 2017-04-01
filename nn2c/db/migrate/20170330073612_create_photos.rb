class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|

      #图片
      t.string :image
      t.integer :_type
      t.integer :position
      t.integer :width
      t.integer :height
      t.belongs_to :owner, polymorphic: true, index: true #图片所有者 设置成多态

      t.timestamps
    end
  end
end
