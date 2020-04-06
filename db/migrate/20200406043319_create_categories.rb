class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, :limit => 50, :null => false
      t.timestamps
      t.boolean :is_deleted, :default => false, :null => false
    end
  end
end
