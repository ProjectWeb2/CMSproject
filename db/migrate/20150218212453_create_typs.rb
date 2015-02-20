class CreateTyps < ActiveRecord::Migration
  def change
    create_table :typs do |t|
      t.text :discription

      t.timestamps null: false
    end
  end
end
