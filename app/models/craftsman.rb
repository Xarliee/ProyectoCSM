class Craftsman < ActiveRecord::Base
  belongs_to :user
  has_many :products
    mount_uploader :photo, PhotoUploader

end
