class AddTypToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :typ_id, :integer
  end
end
