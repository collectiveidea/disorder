class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_line_1
      t.string :street_line_2
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.integer :company_id

      t.timestamps
    end
    add_index :addresses, :company_id
  end
end
