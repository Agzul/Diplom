class User < ApplicationRecord
  authenticates_with_sorcery!

  belongs_to :role, optional: true

  has_attached_file    :image,
                               styles: {
                                 thumb: [ "50x50", :jpeg ]
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

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :login, uniqueness: true, length: { minimum: 3 }
  validates :gender, inclusion: { in: %w(М Ж) }

  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  def delete_img_errors
    if errors.messages.has_key?(:image_content_type)
      errors.messages.delete(:image_content_type)
    end
    if errors.messages.has_key?(:image_file_size)
      errors.messages.delete(:image_file_size)
    end
  end

end
