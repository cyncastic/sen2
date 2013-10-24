class Header < ActiveRecord::Base
  validates :image, presence: true

  mount_uploader :image, HeaderUploader
end
