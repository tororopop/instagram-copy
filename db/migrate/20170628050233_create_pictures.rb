class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string   "file"
      t.text     "caption"

      t.timestamps null: false
    end
  end
end
