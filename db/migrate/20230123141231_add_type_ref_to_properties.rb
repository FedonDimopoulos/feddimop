class AddTypeRefToProperties < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :type, null: false, foreign_key: true
  end
end
