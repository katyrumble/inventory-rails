class CreateManufacturers < ActiveRecord::Migration[6.0]
  def change
    create_table :manufacturers do |t|
      t.string :name, :limit => 100, :null => false
      t.timestamps
      t.boolean :is_deleted, :default => false, :null => false
    end
  end
end
