class CreatePowerSupplies < ActiveRecord::Migration[5.1]
  def change
    create_table :power_supplies do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company, foreign_key: true
      t.integer    :price
      t.integer    :power

      t.timestamps
    end
  end
end
