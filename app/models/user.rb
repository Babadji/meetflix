class User < ApplicationRecord
  has_many :stars

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}, format: { with: ConstantData::VALID_EMAIL_REGEX }
  
end
