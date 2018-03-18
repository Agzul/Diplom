class CreateCpus < ActiveRecord::Migration[5.1]
  def change
    create_table :cpus do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company, foreign_key: true
      t.integer    :price
      t.references :cpu_socket, foreign_key: true
      t.string     :core
      t.integer    :core_num
      t.float      :core_speed
      t.boolean    :overclocking
      t.references :video_core, foreign_key: true
      t.integer    :tdp
      t.float      :game_benchmark

      t.timestamps
    end
  end
end
