class AddContentperpageIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :contentperpage_id, :integer
    add_column :menus, :location_id, :integer
    add_column :menus, :typ_id, :integer
    add_column :menus, :site_id, :integer
  end
end
