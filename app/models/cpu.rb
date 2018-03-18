class Cpu < ApplicationRecord
  belongs_to :company,    optional: true
  belongs_to :cpu_socket, optional: true
  belongs_to :video_core, optional: true
  accepts_nested_attributes_for :video_core, :cpu_socket, :company, allow_destroy: true

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
  validates :name,           presence: true
  validates :description,    presence: true
  validates :price,          presence: true, numericality: { greater_than: 0 }
  validates :core,           presence: true
  validates :core_num,       presence: true, numericality: { greater_than: 0 }
  validates :core_speed,     presence: true, numericality: { greater_than: 0 }
  validates :tdp,            presence: true, numericality: { greater_than: 0 }
  validates :game_benchmark, presence: true, numericality: { greater_than: 0 }
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
