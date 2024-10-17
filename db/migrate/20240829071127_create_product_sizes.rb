class CreateProductSizes < ActiveRecord::Migration[7.2]
  def change
    create_table :product_sizes do |t|
      t.references :product
      t.integer :size, limit: 1
      t.integer :waist, limit: 2
      t.integer :chest, limit: 2
      t.timestamps
    end
  end
end
