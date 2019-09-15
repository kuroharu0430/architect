class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text ,null: false
      t.string :image 
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
