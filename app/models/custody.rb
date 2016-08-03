class Custody < ActiveRecord::Base
  belongs_to :dog
  belongs_to :owner

  validates :dog_id, presence: true
  validates :owner_id, presence: true

  scope :recent, -> (minutes_past=60){where("created_at >?",minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at)=?',Date.today)}
end
