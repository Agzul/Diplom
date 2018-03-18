class CreateVideoCores < ActiveRecord::Migration[5.1]
  def change
    create_table :video_cores do |t|
      t.string :name
      t.float  :speed
      t.float  :game_benchmark

      t.timestamps
    end
  end
end
