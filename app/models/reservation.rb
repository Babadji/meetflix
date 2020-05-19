class Reservation < ApplicationRecord
  belongs_to :star
  belongs_to :user

  validates :start, presence: true
  validates :end, presence: true
  
end
