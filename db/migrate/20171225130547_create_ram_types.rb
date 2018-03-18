class CreateRamTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :ram_types do |t|
      t.string  :name
      t.integer :speed

      t.timestamps
    end
  end
end
