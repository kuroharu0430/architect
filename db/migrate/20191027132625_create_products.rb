class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :text
      t.string :image
      t.date :date
      t.string :place
      t.string :purpose
      t.string :scale
      t.integer :site_area
      t.integer :building_area
      t.integer :architectural_area
      t.timestamps
    end
  end
end
