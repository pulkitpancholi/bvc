class Folding < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :folding_type
  validates_uniqueness_of :folding_type
end
