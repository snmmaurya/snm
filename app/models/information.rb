class Information < ApplicationRecord
  belongs_to :user

  validates :mobile_number, :address, presence: true
end
