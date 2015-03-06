class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :own_photos, :class_name => "Photo", :foreign_key => "owner_id"
  has_many :comments, :class_name => "Comment", :foreign_key => "commenter_id"
  has_many :favoritings, :class_name => "Favoriting", :foreign_key => "favorited_by_id"
  has_many :favorite_photos, :through => :favoritings, :source => :photo


  has_many :followings_where_leader, :class_name => "Following", :foreign_key => "leader_id"
  has_many :followers, :through => :followings_where_leader, :source => :follower


  has_many :followings_where_follower, :class_name => "Following", :foreign_key => "follower_id"
  has_many :leaders, :through => :followings_where_follower, :source => :leader

end
