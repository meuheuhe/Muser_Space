class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  mount_uploader :avatar, AvatarUploader

  has_many :likes
  has_many :songwritings
  has_many :show
  has_many :cover
  
  def like?(x)
    Like.find_by(user_id: self.id, songwriting_id: x.id).present?
  end 
  
end
