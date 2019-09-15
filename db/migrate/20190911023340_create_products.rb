class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :title
      t.text :text
      t.string :image
      t.timestamps
    end
  end
end
