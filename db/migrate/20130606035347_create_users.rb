class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :company_id
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email

      t.timestamps
    end
    add_index :users, :company_id
  end
end
