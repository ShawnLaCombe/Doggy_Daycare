class Breed < ActiveRecord::Base
  has_many :dogs

  validates :name, presence: true


  scope :recent, -> (minutes_past=60){where("created_at >?",minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at)=?',Date.today)}
end
