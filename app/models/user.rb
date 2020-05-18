class User < ApplicationRecord
  has_many :stars

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
