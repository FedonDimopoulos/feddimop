class AddBuildingRefToProperties < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :building, null: false, foreign_key: true
  end
end
