class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "240x240>", thumb: "120x120>" }, default_url: "/images/:style/missing.png"
  has_many :properties

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
