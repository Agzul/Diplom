class CreateRams < ActiveRecord::Migration[5.1]
  def change
    create_table :rams do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company, foreign_key: true
      t.integer    :price
      t.references :ram_type, foreign_key: true
      t.integer    :volume

      t.timestamps
    end
  end
end
