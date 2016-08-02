class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, through: :custodies
end
