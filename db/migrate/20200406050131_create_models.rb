class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.belongs_to :manufacturer, :null => false, foreign_key: true
      t.string :name, :limit => 100, :null => false
      t.timestamps
      t.boolean :is_deleted, :default => false, :null => false
    end
  end
end
