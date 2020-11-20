class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :code
      t.integer :num_users
      t.string :tag

      t.timestamps
    end
  end
end
