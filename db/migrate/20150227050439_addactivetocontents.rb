class Addactivetocontents < ActiveRecord::Migration
  def change
    add_column :contents, :active, :boolean
  end
end
