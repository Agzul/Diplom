class CreateMotherboards < ActiveRecord::Migration[5.1]
  def change
    create_table :motherboards do |t|
      t.string     :name
      t.text       :description
      t.attachment :image
      t.references :company,      foreign_key: true
      t.integer    :price
      t.references :chipset,      foreign_key: true
      t.integer    :pci_e_x16_num
      t.string     :sli_crossfire
      t.integer    :ram_num
      t.references :ram_type,     foreign_key: true
      t.string     :bios
      t.string     :audio
      t.string     :form_factor

      t.timestamps
    end
  end
end
