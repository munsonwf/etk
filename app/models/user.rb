class User < ActiveRecord::Base
  validates_length_of :name, in: 3..36
end
