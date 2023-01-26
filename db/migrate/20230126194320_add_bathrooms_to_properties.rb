class AddBathroomsToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :bathrooms, :integer
  end
end
