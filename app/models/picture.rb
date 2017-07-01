class Picture < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :file, PictureUploader

  validates :file, presence: true

end
