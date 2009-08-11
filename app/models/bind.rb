class Bind < ActiveRecord::Base
  
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :bind_type
  validates_uniqueness_of :bind_type
end
