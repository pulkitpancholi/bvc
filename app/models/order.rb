class Order < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :pagesize
  belongs_to :papertype
  belongs_to :folding
  belongs_to :stapling
  belongs_to :bind
  belongs_to :hard_back_cover  
  belongs_to :papercolor, :class_name => "Color"
  belongs_to :hard_front_cover_color, :class_name => "Color"
  belongs_to :hard_back_cover_color,  :class_name => "Color"
  belongs_to :hard_front_cover_material, :class_name => "HardCoverMaterial"
  belongs_to :hard_back_cover_material,  :class_name => "HardCoverMaterial"
  
  validates_numericality_of :no_of_copies, :no_of_pages
  
end
