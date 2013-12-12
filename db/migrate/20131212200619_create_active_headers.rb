class CreateActiveHeaders < ActiveRecord::Migration
  def change
    create_table :active_headers do |t|
      t.integer :header_id

      t.timestamps
    end
  end
end
