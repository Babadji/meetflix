class Star < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :name }
  validates :category, presence: true
  validates :price, presence: true
end
