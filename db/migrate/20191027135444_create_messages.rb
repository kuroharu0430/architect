class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text
      t.string :image 
      t.references :customer, foreign_key: true
      t.integer :roll
      t.timestamps
    end
  end
end
