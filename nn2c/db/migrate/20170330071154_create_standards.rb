class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|

      #规格

      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
