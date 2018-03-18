class CreateVideoCards < ActiveRecord::Migration[5.1]
  def change
    create_table :video_cards do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company, foreign_key: true
      t.integer    :price
      t.float      :speed
      t.integer    :volume
      t.string     :memory
      t.integer    :tdp
      t.float      :game_benchmark

      t.timestamps
    end
  end
end
