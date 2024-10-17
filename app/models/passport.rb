class Passport < ApplicationRecord
  belongs_to :user

  validates :identification, uniqueness: true, presence: true
end
