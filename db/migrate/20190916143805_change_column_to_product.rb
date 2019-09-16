class ChangeColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :date, :date
    add_column :products, :place, :string
    add_column :products, :purpose, :string
    add_column :products, :scale, :string
    add_column :products, :site_area, :integer
    add_column :products, :building_area, :integer
    add_column :products, :architectural_area, :integer
    remove_column :products, :title

  end
end
