class Branch < ApplicationRecord
  belongs_to :branchable, polymorphic: true
end
