class Product < ActiveRecord::Base
  belongs_to :craftsman
  mount_uploader :photo, PhotoUploader

end
