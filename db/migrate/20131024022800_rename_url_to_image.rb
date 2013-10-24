class RenameUrlToImage < ActiveRecord::Migration
  def change
  	rename_column :headers, :url, :image
  end
end
