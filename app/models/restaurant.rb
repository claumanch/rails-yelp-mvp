class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  RESTO_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: RESTO_CATEGORY }
end
