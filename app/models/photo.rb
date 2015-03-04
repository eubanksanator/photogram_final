class Photo < ActiveRecord::Base

  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"

  # def owner
  #   return User.find_by :id => self.owner_id
  # end

end
