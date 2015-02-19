class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.text :name
      t.string :link
      t.integer :typ
      t.integer :order
      t.integer :location

      t.timestamps null: false
    end
  end
end
