class Stapling < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :stapling_type
  validates_uniqueness_of :stapling_type
end
