class CreateChipsets < ActiveRecord::Migration[5.1]
  def change
    create_table :chipsets do |t|
      t.string     :name
      t.boolean    :overclocking
      t.references :cpu_socket, foreign_key: true

      t.timestamps
    end
  end
end
