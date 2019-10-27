class AddCloumnMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :roll, :integer
  end
end
