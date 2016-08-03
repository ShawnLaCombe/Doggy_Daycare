class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, through: :custodies

  validates :first_name, presence: true 
  validates :last_name, presence: true 
  validates :primary_phone, presence: true 
  validates :secondary_phone, presence: true 
  validates :address, presence: true 
  validates :city, presence: true 
  validates :state, presence: true 
  validates :zip, presence: true 
  validates :emerg_name, presence: true 
  validates :emerg_phone, presence: true 
  

  scope :recent, -> (minutes_past=60){where("created_at >?",minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at)=?',Date.today)}
end
