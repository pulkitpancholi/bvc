class User < ActiveRecord::Base
  
  acts_as_authentic
  
  has_many :addresses, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  
  validates_presence_of :first_name, :last_name
  validates_length_of :first_name, :in => 3..15
  validates_length_of :last_name, :in => 3..15
  validates_format_of :first_name,
                      :message => "must be a valid First Name",
                      :with => %r{^[a-zA-Z''-'\s]{3,15}$}
  
  validates_format_of :last_name,
                      :message => "must be a valid Last Name",
                      :with => %r{^[a-zA-Z''-'\s]{3,15}$}
end
