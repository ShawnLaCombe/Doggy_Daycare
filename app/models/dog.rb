class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :vet
  has_many :custodies
  has_many :owners, through: :custodies
  accepts_nested_attributes_for :custodies

  validates :name, presence: true
  validates :breed_id, presence: true
  validates :dob, presence: true
  validates :vet_id, presence: true
  validates :medical_info, presence: true
  validates :in_daycare, presence: true





  scope :recent, -> (minutes_past=60){where("created_at >?",minutes_past.minutes.ago)}
  scope :today, -> {where('DATE(created_at)=?',Date.today)}


  def last_name
    if custodies.empty?
      "(none)"
    else 
      custodies.first.owner.last_name
    end
  end


end



