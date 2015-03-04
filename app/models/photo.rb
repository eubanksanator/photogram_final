class Photo < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  has_many :comments
  has_many :favoritings

end

