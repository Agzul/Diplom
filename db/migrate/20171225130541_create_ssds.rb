class CreateSsds < ActiveRecord::Migration[5.1]
  def change
    create_table :ssds do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company, foreign_key: true
      t.integer    :price
      t.integer    :volume
      t.string     :size
      t.float      :write_speed
      t.float      :read_speed

      t.timestamps
    end
  end
end
