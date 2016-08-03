class Vet < ActiveRecord::Base
  has_many :dogs

  validates :name, presence: true
  validates :clinic, presence: true 
  validates :phone, presence: true

  scope :recent, -> (minutes_past=60){where("created_at >?",minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at)=?',Date.today)}
end


