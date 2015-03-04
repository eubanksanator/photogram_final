class Photo < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  # def owner
  #   return User.find_by :id => self.owner_id
  # end


end

# Photo should belong to an owner (User)
# Comment should belong to a commenter (User)
# Comment should belong to a photo
# Favoriting should belong to a favorited_by (User)
# Favoriting should belong to a photo

# User should have many comments
# User should have many own_photos (Photos)
# User should have many favoritings
# Photo should have many comments
# Photo should have many favoritings



# Photo should have many fans (Users)
# User should have many favorite_photos (Photos)



