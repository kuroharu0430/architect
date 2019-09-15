class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :image
      t.string :text
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
