class AddAreaToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :area_id, :string
    add_column :properties, :area_description, :string
  end
end
