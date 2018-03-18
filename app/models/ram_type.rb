class RamType < ApplicationRecord
  has_many :rams,         dependent: :destroy
  has_many :motherboards, dependent: :destroy
end
