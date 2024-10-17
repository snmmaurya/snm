class CreateInformation < ActiveRecord::Migration[7.2]
  def change
    create_table :information do |t|
      t.references :user
      t.string :mobile_number
      t.string :address
      t.timestamps
    end
  end
end
