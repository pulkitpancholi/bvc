class Pagesize < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :page_size
  validates_uniqueness_of :page_size
end
