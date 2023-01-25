class RemoveAreaFromProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :area, :string
  end
end
