class VideoCard < ApplicationRecord
  belongs_to :company, optional: true
  accepts_nested_attributes_for :company, allow_destroy: true

  has_attached_file    :image,
                               styles: {
                                 thumb: [ "100x100", :jpeg ],
                                 med: ["300x300", :jpeg]
                               },
                               convert_options: {
                                 thumb: "-quality 90 -strip",
                                 med: "-quality 90 -strip"
                               }
  validates_attachment :image, content_type: { content_type: /\Aimage\/.*\z/,
                                               message: "имеет неверное расширение"
                                             },
                               size:         { less_than: 1.megabyte,
                                               message: "слишком велико"
                                             }

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
