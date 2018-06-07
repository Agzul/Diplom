class CreateAssemblies < ActiveRecord::Migration[5.1]
  def change
    create_table :assemblies do |t|
      t.string     :name
      t.text       :description
      t.integer    :finanse
      t.references :motherboard, foreign_key: true
      t.references :cpu, foreign_key: true
      t.references :ram, foreign_key: true
      t.references :video_card, foreign_key: true
      t.references :ssd, foreign_key: true
      t.references :hdd, foreign_key: true
      t.references :power_supply, foreign_key: true
      t.integer    :video_card_num
      t.integer    :hdd_num
      t.integer    :ssd_num
      t.integer    :ram_num
      t.integer    :balance
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
