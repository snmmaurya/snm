class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :branchable_id
      t.string :branchable_type
      t.timestamps
    end
    add_index :branches, [:branchable_type, :branchable_id]
  end
end
