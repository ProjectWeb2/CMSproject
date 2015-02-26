class Add < ActiveRecord::Migration
  def change

          add_column :contents, :photo_file_name, :string # Original filename
          add_column :contents, :photo_content_type, :string # Mime type
          add_column :contents, :photo_file_size, :integer # File size in bytes


    end


  end

