class Color < ActiveRecord::Base
  
  has_many :orders, :foreign_key => "papercolor_id", :class_name => "Order", :dependent => :destroy
  has_many :orders, :foreign_key => "hard_front_cover_color_id", :class_name => "Order", :dependent => :destroy
  has_many :orders, :foreign_key => "hard_back_cover_color_id", :class_name => "Order", :dependent => :destroy
  
  validates_presence_of :color_name
  validates_uniqueness_of :color_name
  
end
