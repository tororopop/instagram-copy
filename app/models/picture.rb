class Picture < ActiveRecord::Base
  mount_uploader :file, PictureUploader

  validates :file, presence: true

end
