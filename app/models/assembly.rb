class Assembly < ApplicationRecord
  belongs_to :motherboard,  optional: true
  belongs_to :cpu,          optional: true
  belongs_to :ram,          optional: true
  belongs_to :video_card,   optional: true
  belongs_to :ssd,          optional: true
  belongs_to :hdd,          optional: true
  belongs_to :power_supply, optional: true
  belongs_to :user,         optional: true
end
