class AddContentperpageIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :contentperpage_id, :integer
  end
end
