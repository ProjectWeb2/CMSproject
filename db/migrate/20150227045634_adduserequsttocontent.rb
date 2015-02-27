class Adduserequsttocontent < ActiveRecord::Migration
  def change
    add_column :contents, :useronly, :boolean
  end
end
