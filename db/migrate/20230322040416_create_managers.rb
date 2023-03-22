class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :phone_no
      t.string :address

      t.timestamps
    end
  end
end
