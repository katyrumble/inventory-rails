class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name, :limit => 50, :null => false
      t.string :address_line1, :limit => 60
      t.string :address_line2, :limit => 60
      t.string :city, :limit => 50
      t.string :state, :limit => 2
      t.string :zip_code, :limit => 10
      t.timestamps
      t.boolean :is_deleted, :default => false, :null => false
    end
  end
end
