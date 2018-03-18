class CpuSocket < ApplicationRecord
  has_many :chipsets, dependent: :destroy
  has_many :cpus,     dependent: :destroy
end
