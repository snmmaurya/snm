class CreateBooksUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :books_users do |t|
      t.references :user
      t.references :book
      t.timestamps
    end
  end
end
