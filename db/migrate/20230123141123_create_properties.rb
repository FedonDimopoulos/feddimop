class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :area
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
