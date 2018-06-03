class Assembly < ApplicationRecord
  belongs_to :motherboard,  optional: true
  belongs_to :cpu,          optional: true
  belongs_to :ram,          optional: true
  belongs_to :video_card,   optional: true
  belongs_to :ssd,          optional: true
  belongs_to :hdd,          optional: true
  belongs_to :power_supply, optional: true
  belongs_to :user,         optional: true

  validates :video_card_num, numericality: { greater_than: 0, less_than: 5 }
  validates :ram_num, numericality: { greater_than: 0, less_than: 9 }
  validates :ssd_num, numericality: { greater_than: 0, less_than: 13 }
  validates :hdd_num, numericality: { greater_than: 0, less_than: 13 }
end
