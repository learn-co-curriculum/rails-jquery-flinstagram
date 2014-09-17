class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :description
      t.integer :user_id
      t.boolean :admin_like, default: false

      t.timestamps
    end
  end
end
