class CreateContentperpages < ActiveRecord::Migration
  def change
    create_table :contentperpages do |t|


      t.timestamps null: false
    end
  end
end
