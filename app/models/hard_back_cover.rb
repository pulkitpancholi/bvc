class HardBackCover < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :hard_back_cover_type
  validates_uniqueness_of :hard_back_cover_type
end
