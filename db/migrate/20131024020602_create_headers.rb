class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end
