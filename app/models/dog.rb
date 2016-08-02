class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :vet
  has_many :custodies
  has_many :owners, through: :custodies
end
