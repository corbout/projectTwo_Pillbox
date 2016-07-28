class Physician < ActiveRecord::Base
  has_many :pillboxes, :through => :users
end
