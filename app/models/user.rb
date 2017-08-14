class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  mount_uploader :avatar, AvatarUploader

  has_many :likes
  has_many :like2s
  has_many :like3s
  has_many :songwritings
  has_many :covers
  has_many :shows
  
  def like?(x)
    Like.find_by(user_id: self.id, songwriting_id: x.id).present?
  end 
  
  def like2?(x)
    Like2.find_by(user_id: self.id, cover_id: x.id).present?
  end
  
  def like3?(x)
    Like3.find_by(user_id: self.id, show_id: x.id).present?
  end
  
end
