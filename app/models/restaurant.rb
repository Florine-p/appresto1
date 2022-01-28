class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  CATEGORY = "italien", "chinois", "japonais"
  validates :category, inclusion: { in: CATEGORY }

end
