class VideoCore < ApplicationRecord
  has_many :cpus, dependent: :destroy
end
