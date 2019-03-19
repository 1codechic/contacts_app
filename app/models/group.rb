class Group < ApplicationRecord
  has_many :relationships
  has_many :contacts, through: :relationships
end
