class EmailValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Contact < ApplicationRecord
  #belongs_to :user
  has_many :relationships
  has_many :groups, through: :relationships
  
  # validates :first_name, presence:true
  # validates :last_name, presence:true
  # validates :email, presence: true, uniqueness: true, email: true
  

  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
