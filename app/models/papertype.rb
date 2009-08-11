class Papertype < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :paper_type
  validates_uniqueness_of :paper_type
end
