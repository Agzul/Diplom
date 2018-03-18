class Chipset < ApplicationRecord
  belongs_to :cpu_socket
  has_many   :motherboards, dependent: :destroy

  validates :name,         presence: true
  validates :cpu_socket,   presence: true
end
