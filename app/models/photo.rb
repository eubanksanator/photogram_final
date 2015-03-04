class Photo < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  # def owner
  #   return User.find_by :id => self.owner_id
  # end

end

# Comment should belong to a commenter (User)
# Favorite should belong to a favorited_by (User)
# Comment should belong to a photo

# User should have many comments
# Photo should have many fans (Users)
# Photo should have many comments
