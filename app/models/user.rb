class User < ApplicationRecord
  has_many :informations
  has_one :passport

  has_many :appointments
  has_many :doctors, through: :appointments

  has_and_belongs_to_many :books

  has_many :branches, as: :branchable

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true

  accepts_nested_attributes_for :informations
end
