class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    name = first_name + ' '
    name += last_name
  end
end
