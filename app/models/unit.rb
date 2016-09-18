class Unit < ActiveRecord::Base
  belongs_to :property
  has_attached_file :main_image, styles: { large: "1000x1000>", medium: "240x240>", thumb: "120x120>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :main_image, content_type: /\Aimage\/.*\z/
end
