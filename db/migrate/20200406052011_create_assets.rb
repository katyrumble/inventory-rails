class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :asset_tag, :limit => 10
      t.string :serial_number, :null => false
      t.belongs_to :category, :null => false, foreign_key: true
      t.belongs_to :model, :null => false, foreign_key: true
      t.string :primary_user, :limit => 50
      t.belongs_to :location, :null => false, foreign_key: true
      t.datetime :purchase_date
      t.datetime :warranty_expiry
      t.text :notes
      t.timestamps
      t.boolean :is_deleted, :default => false, :null => false
    end
  end
end
