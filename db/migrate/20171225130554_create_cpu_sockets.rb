class CreateCpuSockets < ActiveRecord::Migration[5.1]
  def change
    create_table :cpu_sockets do |t|
      t.string :name

      t.timestamps
    end
  end
end
