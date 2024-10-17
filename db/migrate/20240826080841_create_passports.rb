class CreatePassports < ActiveRecord::Migration[7.2]
  def change
    create_table :passports do |t|
      t.references :user
      t.string :identification
      t.timestamps
    end
    add_index :passports, :identification, unique: true
  end
end
