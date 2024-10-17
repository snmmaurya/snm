class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.json :specifications
      t.integer :inventory
      t.integer :status, limit: 1, default: 0
      t.timestamps
    end
  end
end
