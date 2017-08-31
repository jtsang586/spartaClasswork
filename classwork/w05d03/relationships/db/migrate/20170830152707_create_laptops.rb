class CreateLaptops < ActiveRecord::Migration[5.1]
  def change
    create_table :laptops do |t|
      t.integer :laptop_id

      t.timestamps
    end
  end
end
