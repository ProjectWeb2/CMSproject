class AddsomthingToAllDb < ActiveRecord::Migration
  def change

    remove_column :menus, :typ, :integer
    remove_column :menus, :location, :integer
    remove_column :menus, :link, :integer
    add_column :contentperpages, :content_id, :integer
    add_column :contentperpages, :menu_id, :integer
    remove_column :menus, :contentperpage_id, :integer

  end
end
