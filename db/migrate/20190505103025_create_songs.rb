class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :content
      t.text :name
      t.integer :age
      t.string  :phone_number
      t.string :user_id

      t.timestamps
    end
  end
end
