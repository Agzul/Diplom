class Company < ApplicationRecord
  has_many :ssds,           dependent: :destroy
  has_many :hdds,           dependent: :destroy
  has_many :rams,           dependent: :destroy
  has_many :motherboards,   dependent: :destroy
  has_many :cpus,           dependent: :destroy
  has_many :video_cards,    dependent: :destroy
  has_many :power_supplies, dependent: :destroy
end
