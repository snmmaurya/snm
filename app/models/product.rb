class Product < ApplicationRecord
  has_many :product_sizes
  enum status: {active: 0, inactive: 1}

  validates :name, presence: true

  searchkick

  def search_data
    {
      name: name,
      description: description
    }
  end
end
