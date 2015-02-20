class CreateContentperpages < ActiveRecord::Migration
  def change
    create_table :contentperpages do |t|
      t.integer :contentid
      t.integer :subitemid

      t.timestamps null: false
    end
  end
end
