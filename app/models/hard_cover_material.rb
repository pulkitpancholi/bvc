class HardCoverMaterial < ActiveRecord::Base
  
  has_many :orders, :foreign_key => "hard_front_cover_material_id", :class_name => "Order", :dependent => :destroy
  has_many :orders, :foreign_key => "hard_back_cover_material_id", :class_name => "Order", :dependent => :destroy
  
  validates_presence_of :hard_cover_material_type
  validates_uniqueness_of :hard_cover_material_type
end
