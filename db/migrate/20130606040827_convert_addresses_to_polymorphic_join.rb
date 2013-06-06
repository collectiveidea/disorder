class ConvertAddressesToPolymorphicJoin < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      t.rename :company_id, :addressable_id
      t.string :addressable_type
    end
  end
end
