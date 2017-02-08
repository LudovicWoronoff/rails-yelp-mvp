class Restaurant < ApplicationRecord
  has_many :review, dependent: :destroy

  validates :address, presence: {message: "Il manque une adresse"}
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }

end
