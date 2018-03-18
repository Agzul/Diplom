class Motherboard < ApplicationRecord
  belongs_to :company,  optional: true
  belongs_to :chipset,  optional: true
  belongs_to :ram_type, optional: true
  accepts_nested_attributes_for :ram_type, :chipset, :company, allow_destroy: true

  has_attached_file    :image,
                               styles: {
                                 thumb: [ "100x100", :jpeg ]
                               },
                               convert_options: {
                                 thumb: "-quality 90 -strip"
                               }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\z/,
                                               message: "имеет неверное расширение"
                                             },
                               size:         { less_than: 1.megabyte,
                                               message: "слишком велико"
                                             }

  validates :name,          presence: true
  validates :description,   presence: true
  validates :price,         presence: true, numericality: { greater_than: 0 }
  validates :pci_e_x16_num, presence: true
  validates :sli_crossfire, presence: true, inclusion:    { in: %w(SLI CrossFire SLI/CrossFire Нет) }
  validates :ram_num,       presence: true, numericality: { greater_than: 0, less_than: 33 }
  validates :bios,          presence: true, inclusion:    { in: %w(AMI Award Phoenix) }
  validates :audio,         presence: true, inclusion:    { in: ["7.1, HDA", "5.1, AC97"] }
  validates :form_factor,   presence: true, inclusion:    { in: %w(ATX mATX EATX mITX) }

  after_validation :delete_img_errors

  def delete_img_errors
    if errors.messages.has_key?(:image_content_type)
      errors.messages.delete(:image_content_type)
    end
    if errors.messages.has_key?(:image_file_size)
      errors.messages.delete(:image_file_size)
    end
  end
end
