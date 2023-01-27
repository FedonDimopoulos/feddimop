class CreateJoinTableLevelsProperties < ActiveRecord::Migration[7.0]
  def change
    create_join_table :levels, :properties do |t|
      t.index [:level_id, :property_id]
      t.index [:property_id, :level_id]
    end
  end
end
