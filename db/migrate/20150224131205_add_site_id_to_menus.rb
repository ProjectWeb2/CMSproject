class AddSiteIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :site_id, :integer
  end
end
