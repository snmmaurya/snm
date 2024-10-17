class ProductSize < ApplicationRecord
  belongs_to :product

  enum size: {small: 0, medium: 1, large: 2}

  validates :size, presence: true
end
